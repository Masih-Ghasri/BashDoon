#!/bin/bash

TASKS_FILE="tasks.txt"

if [ ! -f "$TASKS_FILE" ]; then
    touch "$TASKS_FILE"
fi

get_priority() {
    local title="$1"
    if [[ "${title,,}" =~ \(very\ important\)$ ]]; then
        echo "H"
    elif [[ "${title,,}" =~ \(important\)$ ]]; then
        echo "M"
    else
        echo "L"
    fi
}

get_stars() {
    local priority="$1"
    case "$priority" in
        "L") echo "*";;
        "M") echo "***";;
        "H") echo "*****";;
    esac
}

command="$1"
shift

case "$command" in
    "add")
        if [ -z "$1" ]; then
            echo "[Error] This command needs an argument" >&2
            exit 1
        fi

        task_title="$*"
        priority=$(get_priority "$task_title")
        echo "$priority $task_title" >> "$TASKS_FILE"
        task_number=$(wc -l < "$TASKS_FILE")
        echo "Added task $task_number with priority $priority"
        ;;

    "list")
        if [ ! -s "$TASKS_FILE" ]; then
            echo "No tasks found..."
            exit 0
        fi

        task_number=0
        while IFS= read -r line; do
        ((task_number++))
        priority="${line:0:1}"
        title="${line:2}"
        stars=$(get_stars "$priority")
        printf "%d %s   %s\n" "$task_number" "$stars" "$title"
        done < "$TASKS_FILE"
        ;;

    "done")
        if [ -z "$1" ]; then
            echo "[Error] This command needs an argument" >&2
            exit 1
        fi

        task_number="$1"
        if ! [[ "$task_number" =~ ^[0-9]+$ ]] || [ "$task_number" -lt 1 ]; then
            echo "[Error] Invalid task number" >&2
            exit 1
        fi

        if [ "$task_number" -gt "$(wc -l < "$TASKS_FILE")" ]; then
            echo "[Error] Invalid task number" >&2
            exit 1
        fi

        task_title=$(sed -n "${task_number}p" "$TASKS_FILE" | cut -c 3-)
        sed -i "${task_number}d" "$TASKS_FILE"
        echo "Completed task $task_number: $task_title"
        ;;

    *)
        echo "[Error] Invalid command" >&2
        exit 1
        ;;
esac
