# <img src="https://github.com/pip-services/pip-services/raw/master/design/Logo.png" alt="Pip.Services Logo" style="max-width:30%"> <br/> Workspace for iQuipsys Positron in Powershell


## Installation

- Install **pip-tasks-ps**, **pip-tasks-common-ps** Powershell modules, 
add them to **PSModulePath** and import into Powershell

- Clone this workspace to local disk
```bash
> git clone https://github.com/pip-services/pip-services-ps-ws.git
```

- Got to the workspace folder and clone component repositories
```bash
> piptask clone -workspace
```

## Usage

- Setting default workspace
```bash
> pipuse <Path to this workspace>
```

- Start and stop infrastructure services
```bash
> piptask start -component pip-services-devenv
> piptask stop -component pip-services-devenv
```

- Test all components
``` bash
> piptask test -all
```

- Check out changes from remote repository
```bash
> piptask pull -all
```

- Check in changes to remote repository
```bash
> piptask push -m <Changes comment> -all
```

## Acknowledgements

The Powershell version of Pip.Services is created and maintained by **Sergey Seroukhov**
