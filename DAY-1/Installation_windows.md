# 🚀 How to Install Terraform on Windows

This guide explains two ways to install **Terraform** on Windows:  
- **Manual Installation**  
- **Using Chocolatey (Recommended)**

---

## 🔹 Method 1: Manual Installation

1. **Download Terraform**
   - Go to the official [Terraform Downloads](https://developer.hashicorp.com/terraform/downloads) page.
   - Choose **Windows (AMD64/ARM64)** depending on your system.
   - Download the `.zip` file.

2. **Extract the Terraform Binary**
   - Unzip the downloaded file.  
   - Inside, you’ll find `terraform.exe`.  
   - Move it to a folder (e.g., `C:\terraform`).

3. **Add Terraform to PATH**
   - Press `Win + R`, type `sysdm.cpl` → press Enter.  
   - Go to **Advanced → Environment Variables**.  
   - Under **System Variables**, select `Path` → click **Edit**.  
   - Click **New** and add the path where `terraform.exe` is located (e.g., `C:\terraform`).  
   - Click **OK** to save.

4. **Verify Installation**
   ```powershell
   terraform -version


## 🔹 Method 2:Install via Chocolatey (Recommended)

1. **Install Chocolatey**

	**Open PowerShell (Admin) and run the following command:**
	```powershell
	Set-ExecutionPolicy Bypass -Scope Process -Force; `
	[System.Net.ServicePointManager]::SecurityProtocol = `
	[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
	iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
	
	```
	Close and reopen PowerShell after installation.


2. **Install Terraform**
	```powershell
	choco install terraform -y


3. **Verify Installation**
	```powershell
	terraform -version


4. **Update Terraform**
	```powershell
	choco upgrade terraform -y