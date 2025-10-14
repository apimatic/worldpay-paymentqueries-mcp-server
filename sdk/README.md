
# Getting Started with Payment Queries

## Introduction

Query your payments data based on a variety of parameters.

__Authentication__

Set your headers:

```
Authorization: {your_credentials}
  Accept: application/vnd.worldpay.payment-queries-v1.hal+json
```

Replace `{your_credentials}` with your base64-encoded Basic Auth username and password.

<br><br>
__DNS whitelisting__

Whitelist the following URLs:

* `https://try.access.worldpay.com/`
* `https://access.worldpay.com/`

Please ensure you use DNS whitelisting, not explicit IP whitelisting.

## Building

### Requirements

The SDK relies on **Node.js** and **npm** (to resolve dependencies). It also requires **Typescript version >=4.1**. You can download and install Node.js and [npm](https://www.npmjs.com/) from [the official Node.js website](https://nodejs.org/en/download/).

> **NOTE:** npm is installed by default when Node.js is installed.

### Verify Successful Installation

Run the following commands in the command prompt or shell of your choice to check if Node.js and npm are successfully installed:

* Node.js: `node --version`

* npm: `npm --version`

![Version Check](https://apidocs.io/illustration/typescript?workspaceFolder=PaymentQueries&step=versionCheck)

### Install Dependencies

- To resolve all dependencies, go to the **SDK root directory** and run the following command with npm:

```bash
npm install
```

- This will install all dependencies in the **node_modules** folder.

![Resolve Dependencies](https://apidocs.io/illustration/typescript?workspaceFolder=PaymentQueries&workspaceName=payment-querieslib&step=resolveDependency)

## Installation

The following section explains how to use the generated library in a new project.

### 1. Initialize the Node Project

- Open an IDE/text editor for JavaScript like Visual Studio Code. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

- Click on **File** and select **Open Folder**. Select an empty folder of your project, the folder will become visible in the sidebar on the left.

![Open Folder](https://apidocs.io/illustration/typescript?step=openProject)

- To initialize the Node project, click on **Terminal** and select **New Terminal**. Execute the following command in the terminal:

```bash
npm init --y
```

![Initialize the Node Project](https://apidocs.io/illustration/typescript?step=initializeProject)

### 2. Add Dependencies to the Client Library

- The created project manages its dependencies using its `package.json` file. In order to add a dependency on the *Payment QueriesLib* client library, double click on the `package.json` file in the bar on the left and add the dependency to the package in it.

![Add PaymentQuerieslib Dependency](https://apidocs.io/illustration/typescript?workspaceFolder=PaymentQueries&workspaceName=payment-querieslib&step=importDependency)

- To install the package in the project, run the following command in the terminal:

```bash
npm install
```

![Install PaymentQuerieslib Dependency](https://apidocs.io/illustration/typescript?step=installDependency)

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| environment | `Environment` | The API environment. <br> **Default: `Environment.Production`** |
| timeout | `number` | Timeout for API calls.<br>*Default*: `0` |
| httpClientOptions | [`Partial<HttpClientOptions>`](doc/http-client-options.md) | Stable configurable http client options. |
| unstableHttpClientOptions | `any` | Unstable configurable http client options. |
| logging | [`PartialLoggingOptions`](doc/partial-logging-options.md) | Logging Configuration to enable logging |
| basicAuthCredentials | [`BasicAuthCredentials`](doc/auth/basic-authentication.md) | The credential object for basicAuth |

The API client can be initialized as follows:

```ts
import { Client, Environment, LogLevel } from 'payment-querieslib';

const client = new Client({
  basicAuthCredentials: {
    username: 'BasicAuthUserName',
    password: 'BasicAuthPassword'
  },
  timeout: 0,
  environment: Environment.Production,
  logging: {
    logLevel: LogLevel.Info,
    logRequest: {
      logBody: true
    },
    logResponse: {
      logHeaders: true
    }
  },
});
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | **Default** testing (try) |
| environment2 | live |

## Authorization

This API uses the following authentication schemes.

* [`BasicAuth (Basic Authentication)`](doc/auth/basic-authentication.md)

## List of APIs

* [API](doc/controllers/api.md)

## SDK Infrastructure

### Configuration

* [HttpClientOptions](doc/http-client-options.md)
* [RetryConfiguration](doc/retry-configuration.md)
* [ProxySettings](doc/proxy-settings.md)
* [PartialLoggingOptions](doc/partial-logging-options.md)
* [PartialRequestLoggingOptions](doc/partial-request-logging-options.md)
* [PartialResponseLoggingOptions](doc/partial-response-logging-options.md)
* [LoggerInterface](doc/logger-interface.md)

### HTTP

* [HttpRequest](doc/http-request.md)

### Utilities

* [ApiResponse](doc/api-response.md)
* [ApiError](doc/api-error.md)

