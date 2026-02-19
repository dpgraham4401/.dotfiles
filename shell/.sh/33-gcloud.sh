# gcloud
export GOOGLE_CLOUD_PROJECT="cs-host-b25d46e8f3d74bc599eb19"

if command -v gcloud >/dev/null 2>&1; then
    GCLOUD_SDK_ROOT="$(gcloud info --format='value(installation.sdk_root)' 2>/dev/null)"

    if [ -n "$GCLOUD_SDK_ROOT" ]; then
        if [ -n "${ZSH_VERSION:-}" ]; then
            if [ -f "$GCLOUD_SDK_ROOT/path.zsh.inc" ]; then
                . "$GCLOUD_SDK_ROOT/path.zsh.inc"
            fi
            if [ -f "$GCLOUD_SDK_ROOT/completion.zsh.inc" ]; then
                . "$GCLOUD_SDK_ROOT/completion.zsh.inc"
            fi
        elif [ -n "${BASH_VERSION:-}" ]; then
            if [ -f "$GCLOUD_SDK_ROOT/path.bash.inc" ]; then
                . "$GCLOUD_SDK_ROOT/path.bash.inc"
            fi
        fi
    fi
fi
