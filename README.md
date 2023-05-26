<h1 align="center">Welcome to mousemove 👋🖱</h1>

> Python script to move the mouse automatically so you don't get inactive

## ❇️ Install (Unix based system)

Make sure you have [make](https://www.gnu.org/software/make/manual/make.html) and [python](https://www.python.org/) installed.

For installation:

```sh
make install
```

## ❇️ Install (Windows)

Ensure that the execution policy allows running PowerShell scripts. If you haven't changed the execution policy, it is likely set to "Restricted" by default, which prevents running scripts. 

To check the current execution policy, use the command:
```
Get-ExecutionPolicy
```

If the execution policy is set to "Restricted," you can temporarily bypass it for the current session by running the following command: 
````
Set-ExecutionPolicy Bypass -Scope Process
````
Alternatively, you can set the execution policy to allow running scripts by running the following command (requires administrative privileges):
```
Set-ExecutionPolicy RemoteSigned.
```
For installation:

```
.\mmm-windows.ps1 install
```

## 🚀 Usage (Unix based system)

To get help:
```sh
make help
```

To run the script:
```sh
make run MINUTES=${Value}
```

## 🚀 Usage (Windows)

To get help:
```ps1
.\mmm-windows.ps1 help
```

To run the script (change X for the value of minutes):
```ps1
.\mmm-windows.ps1 run X
```

## Author

👤 **Hiago Adão**

* Github: [@HiagoAdao](https://github.com/HiagoAdao)
* LinkedIn: [https:\/\/www.linkedin.com\/in\/hiago-oliveira-b223b1161\/](https://linkedin.com/in/https:\/\/www.linkedin.com\/in\/hiago-oliveira-b223b1161\/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/HiagoAdao/move-my-mouse/issues). 

***