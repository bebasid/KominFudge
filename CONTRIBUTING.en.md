# Introduction

Thank you for your interest to contribute in the KominFudge project! We appreciate your contribution to solving the censorship problem from Kominfo.

Before you start contributing to this project, please check this contribution guideline first to help you understand how to contribute properly.
 
## How to Contributing

To contribute to this project, follow these steps:

1. Fork the KominFudge repository onto your GitHub account by clicking the "Fork" button on the right corner of the project page. 
2. After you are done editing, open the project page on your GitHub account and create the pull request by clicking the "New pull request" button.
3. Wait until the reviewer from the project checks your contribution and provides feedback if needed. After your contribution is approved, the pull request will be merged onto the main branch and your contribution will be added to the project.

## VPN
If you want to add a VPN, that VPN must follow the [PrivacyGuides VPN criteria](https://www.privacyguides.org/en/vpn/#criteria) and [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria), such as:

- Easy to use, if the VPN needs to be configured before can be used like OpenVPN, you can add it to [Advanced README](Advanced-README.md).
- No private information should be needed to register: Mostly just username, password, and email.
- Good track record from the company.

>Note: VPN must follow the [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria) and one of the criteria linked above, [PrivacyGuides VPN criteria](https://www.privacyguides.org/en/vpn/#criteria) is optional.

### Formatting
To add the new VPN application, please use this format:

```
| [Name of the VPN](vpn site) | Note (optional, if there is nothing, add (-)) | Price |
```

You can use something like [Table Magic](https://stevecat.net/table-magic/) as a formatting aid

You can use this in the Price table: 
**Paid** - This service has paid subscription only that You must pay before using it.
**Freemium** - This service has both free and paid subscriptions.
**Free** - This service is 100% free, [Free as in Free beer](https://www.urbandictionary.com/define.php?term=Free+as+in+Beer).

## DNS
If You want to add the DNS, the DNS must follow the [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria).

### Formatting
To add the new DNS, please use this format:
```
| Name of the DNS | Note | `IPv4 1` | `IPv4 2` | `Port` | `IPv6` | `IPv6 2` | `DoH` | `DoT` |
```
If the DNS is configurable (for example: NextDNS), please use this format:
```
| [Name of the DNS](dns site) | Configurable | Custom | Custom | Custom | Custom | Custom | Custom | Custom |
```
You can use something like [Table Magic](https://stevecat.net/table-magic/) as a formatting aid

If the DNS you just added does not have one of the items in the table, you can add (-) in that table like this example:
```
| Name of the DNS | Note | - | `IPv4 2` | - | `IPv6` | `IPv6 2` | `DoH` | `DoT` |
```
Before you add this, you must check that DNS does not have that item. You can find them on the [Adguard KB](https://adguard-dns.io/kb/general/dns-providers) and [cURL wiki](https://github.com/curl/curl/wiki/DNS-over-HTTPS) if you cannot find it on the official website.

If the DNS you just added has blocking system, Use the Note table to inform the user:
Example:
```
| Name of the DNS | This DNS [blocking ad](source site) | - | - | - | - | - | - | - |
```
 
## Application
This part applies to **DNS Applications**, **Applications to eliminate DPI**, dan **Tor Applications**

If you want to add the application, that application must follow the [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria).

### Formatting
To add the new Application, please use this format:
```
Number. [Name](application site) [platform 1, platform 2]
>Description.
```
You can translate the official description for the description.

You must follow this format for the Platform section:
```
iOS, Android, Windows, macOS, Linux
```
Correct example:
```
Android, Windows, Linux
```
Incorrect example:
```
Linux, iOS, Windows
```

## Hostfile
To add the new Hostfile, please use this format:
```
| Name of hostfile owner | [Service](hostfile site) | [Mirror](mirror site) (optional, if there is nothing, add (-)) |
```
If the Mirror has a different owner, please also add that to the Name table.

If the service has less than 10, you must add like this:
```
| Name of hostfile owner | [Service 1, Service 2](hostfile site) | - |
```

If the service has more or equal to 10, you must add like this:
```
| Name of hostfile owner | [10+](hostfile site) | - |
```
You can use something like [Table Magic](https://stevecat.net/table-magic/) as a formatting aid.

## Tutorial
This part applies to **How to change DNS**, **Trick to bypass DPI without application**, dan **How to unblock using hosts file**

### Formatting
To add the new tutorial, please use this format:
```
### (System)

>1. Tutorial
>2. 
```
