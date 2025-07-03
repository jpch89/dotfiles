## PowerShell 配置文件说明

**配置文件路径**

配置文件路径位于 `$PROFILE`，我这里是：

`C:\Users\Patrick Ji\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`

**命令别名**

- `gst`：`git status -sb`
- `gaa`：`git add -A`
- `gcm`：`git commit -m`
- `gps`：`git push`
- `gpr`：`git pull --rebase`
- `gco`：`git checkout`
- `gcb`：`git checkout -b`
- `glg`：`git log`

**oh-my-posh**

- 需要使用 `oh-my-posh font install meslo` 安装字体
- 修改 `Windows Terminal` 的 `PowerShell` 配置文件 `settings.json`

```json
{
    "profiles":
    {
        "defaults":
        {
            "font":
            {
                "face": "MesloLGM Nerd Font Mono"
            }
        }
    }
}
```

- 主题文件 `powerlevel10k_rainbow.omp.json` 放在用户家目录下才能生效，主题相关配置已经加入到 `Microsoft.PowerShell_profile.ps1`。

```powershell
oh-my-posh init pwsh --config ~/powerlevel10k_rainbow.omp.json | Invoke-Expression
```
