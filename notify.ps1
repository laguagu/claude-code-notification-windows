Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object System.Drawing.Size(200,50)
$form.StartPosition = "Manual"
$form.Location = New-Object System.Drawing.Point((([System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Width - 200) / 2), ([System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Height - 80))
$form.FormBorderStyle = "None"
$form.TopMost = $true
$form.BackColor = [System.Drawing.Color]::FromArgb(30,30,30)
$form.Opacity = 0.95

# Rounded corners
$path = New-Object System.Drawing.Drawing2D.GraphicsPath
$radius = 15
$rect = New-Object System.Drawing.Rectangle(0, 0, $form.Width, $form.Height)
$path.AddArc($rect.X, $rect.Y, $radius, $radius, 180, 90)
$path.AddArc($rect.X + $rect.Width - $radius, $rect.Y, $radius, $radius, 270, 90)
$path.AddArc($rect.X + $rect.Width - $radius, $rect.Y + $rect.Height - $radius, $radius, $radius, 0, 90)
$path.AddArc($rect.X, $rect.Y + $rect.Height - $radius, $radius, $radius, 90, 90)
$path.CloseFigure()
$form.Region = New-Object System.Drawing.Region($path)

$label = New-Object System.Windows.Forms.Label
$label.Text = [char]0x2713 + " Claude done"
$label.ForeColor = [System.Drawing.Color]::FromArgb(80,200,120)
$label.Font = New-Object System.Drawing.Font("Segoe UI",11)
$label.AutoSize = $false
$label.Size = New-Object System.Drawing.Size(200,50)
$label.TextAlign = "MiddleCenter"
$form.Controls.Add($label)

$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 2500
$timer.Add_Tick({ $form.Close() })
$timer.Start()

$form.ShowDialog()
