# Luis Navarro -  Writing Portfolio

| [Saboritmico: A report from the dance floor in mexico-Journal article (English)](https://dj.dancecult.net/index.php/dancecult/article/view/1066/962)                                                                                                                                                                 | [Bellacode: localized textual interfaces for live coding music - Conference paper (English)](https://zenodo.org/record/4091446#.YnmXKhzMLeQ)                                                                                                                                                                 | [Cacharpo: Coperforming Cumbia Sonidera with Deep Abstractions - Conference paper (English)](https://iclc.toplap.org/2017/cameraReady/Navarro_Cacharpo%20co-performing%20cumbia%20sonidera%20with%20deep%20abstraction_ICLC2017.pdf)                                                                                                             |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| This text describes the journey of the Mexican collective RGGTRN, a nomadic group interested in music such as reggaeton, cumbia sonidera, and tribal. This was paper published at Dancecult: Journal of Electronic Dance Music Culture (2019). | This paper focuses on the development of localized live coding esolangs, targeting the underlying affordances of TidalCycles via the Estuary web-based environment. This was paper presented at the International Conference on Live Coding (Spain, 2019). | This paper describes Cacharpo, an autonomous agent that serves as an assistant within live coding performance. This paper was presented at the International Conference on Live Coding (Mexico, 2017). |

<br>

| [Editor of the Digital Arts Blog Toplap.org (English/Spanish)](https://toplap.org/)                                                                                                                                                                    | [User Manual Translation for Laser Cutting Machine (Spanish)](https://www.luisnavarrodelangel.net/techWriter/docs/Manual%20operaciones%20-%20Corte%20Laser%20500.pdf)                                                                                     | [Online Tutorial for Fluxus Audiovisual Programming Language (Spanish)](https://sites.google.com/site/tallerdeaudio/herramientas/fluxus)                                                                                                                                                             |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| The Toplap blog is the blog of the TOPLAP organisation founded in 2004 which explores and promotes live coding arts. As editor of this blog, I lay out and proofread upcoming articles and create activities to engage readers. | Translation, from English to Spanish, of the manual for the laser cutting machine model TQL-MFC500-GC60. Project done for Bimex (Mexico, 2016). | Fluxus is a programming environment for real-time animation and audio. This tutorial was made for the course Introduction to real-time animation environments taught at the Multimedia Center of the National Center for the Arts (Mexico, 2011). |

<!--
## Table of Contents

- [Saboritmico: A report from the dance floor in mexico-Journal article (English)](#Writing-Samples)
- [Requirements](#requirements)
- [How To Install The Module](#how-to-install-the-module)
- [How To Uninstall The Module](#how-to-uninstall-the-module)
- [OAuth Access Token Requirement](#oauth-access-token-requirement)
- [Usage Examples](#usage-examples)

## Functions

So far there are two functions included in this module.

- [`Get-EwsFolder`](docs/Get-EwsFolder.md)
  * List ALL folders from a mailbox
  * Search a folder from mailbox by folder display name (eg. `Inbox`, `Drafts`)
  * Get a folder from mailbox by folder ID (eg. `AQMkADRmZTI3MW..`)
- [`Move-EwsItem`](docs/Move-EwsItem.md)
  * Move all mailbox items from one folder to another
  * Move mailbox items between dates from one folder to another

> *Note: These functions use OAuth token to authenticate with Exchange Online. Basic authentication using username and password is not supported*

## Requirements

- A registered Azure AD app
  * **API Name:** *Exchange*
  * **API Permission Type:** *Application*
  * **API Permission Name:** *full_access_as_app*

      ![Azure Ad Api Permission](https://raw.githubusercontent.com/junecastillote/EWS.PS/master/docs/images/AzureAdApp-API-Permissions.png)<br>A registered Azure AD App with full_access_as_app API permisson

- Windows PowerShell 5.1
- [Exchange Web Services Managed API 2.2](https://www.microsoft.com/en-us/download/details.aspx?id=42951)
- For getting access tokens, you can have either [MSAL.PS](https://www.powershellgallery.com/packages/MSAL.PS) or [ADAL.PS](https://www.powershellgallery.com/packages/ADAL.PS)

## How To Install The Module

- [Download the module](https://github.com/junecastillote/EWS.PS/archive/master.zip) and extract the ZIP file on your computer.

  ![Extract the module](https://raw.githubusercontent.com/junecastillote/EWS.PS/master/docs/images/extract_module.png)<br>Extract the module files on your computer

- Open PowerShell as Administrator, change the working directory to the location of the module.
- Run the script `.\install.ps1 -ModulePath 'C:\Program Files\WindowsPowerShell\Modules' -Verbose`

  ![Install the module](https://raw.githubusercontent.com/junecastillote/EWS.PS/master/docs/images/install_module.png)<br>Install the module

## How To Uninstall The Module

- Open PowerShell as Administrator, change the working directory to the location of the module.
- Run the script `.\uninstall.ps1 -Verbose`
![Uninstall the module](https://raw.githubusercontent.com/junecastillote/EWS.PS/master/docs/images/uninstall_module.png)<br>Uninstall the module

## OAuth Access Token Requirement

Make sure to acquire an access token first. Use the `Get-MsalToken` cmdlet or `Get-AdalToken`.

### Get Access Token Using MSAL.PS

```PowerShell
# Get MSAL Token using CLIENT ID,  CLIENT SECRET, and TENANT ID
$msalParams = @{
    ClientId = 'CLIENT ID'
    ClientSecret = (ConvertTo-SecureString 'CLIENT SECRET' -AsPlainText -Force)
    TenantId = 'TENANT ID'
    Scopes   = "https://outlook.office.com/.default"
}
$token = Get-MsalToken @msalParams
```

### Get Access Token Using ADAL.PS

```PowerShell
# Get MSAL Token using CLIENT ID,  CLIENT SECRET, and TENANT ID
$msalParams = @{
    ClientId = 'CLIENT ID'
    ClientSecret = (ConvertTo-SecureString 'CLIENT SECRET' -AsPlainText -Force)
    TenantId = 'TENANT ID'
    Resource   = "https://outlook.office.com/"
}
$token = Get-MsalToken @msalParams
```

> *Visit the [MSAL.PS GitHub](https://github.com/AzureAD/MSAL.PS) page to learn more about using MSAL.PS module to acquire OAuth access tokens.*

## Usage Examples

- [List All Folders In A Mailbox](docs/Get-EwsFolder.md#example-1--list-all-folders-in-a-mailbox)
- [Find A Folder Using Folder Name](docs/Get-EwsFolder.md#example-2--find-a-folder-using-folder-name)
- [Find A Folder Using Folder ID](docs/Get-EwsFolder.md#example-3--find-a-folder-using-folder-id)
- [Move All Items from One Folder to Another](docs/Move-EwsItem.md#example-1--move-all-items-from-one-folder-to-another)
- [Move Items Received Between Specified Dates](docs/Move-EwsItem.md#example-2--move-items-received-within-specified-dates) -->
