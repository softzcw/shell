#使用powershell批量把文件的修改时间设置为一个随机时间
$Start = Get-Date '01.01.2010'
$End = Get-Date '05.05.2023'
$Random = Get-Random -Minimum $Start.Ticks -Maximum $End.Ticks
Get-ChildItem -recurse | ForEach-Object { $Random = Get-Random -Minimum $Start.Ticks -Maximum $End.Ticks;$_.LastWriteTime =[datetime]$Random  }
