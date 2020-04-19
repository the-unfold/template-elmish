# template-elmish

Назначение данного шаблона: иметь возможность обновлять зависимости чаще и лучше понимать происходящее.
Он отвечает следующим требованиям:

* имеет команду сборки
* имеет github workflow, который собирает проект при каждом push любую в ветку
* содержит пример unit-тестов, которые выполняются как в dotnet, так и в JS

Для сборки проекта достаточно следующих файлов:

``` bash
package.json # зависимости JS
src/App.fsproj # зависимости F#
workflows/build.yml # Github Actions
src/App.fs
public/index.html
Nuget.Config
webpack.config.js
```

## Глобальные зависимости

- Node.js 12.15
- [.Net Core SDK 3.1](https://docs.microsoft.com/en-us/dotnet/core/install/sdk?pivots=os-windows) (в Dockerfile используется alpine-образ от Microsoft, а для других систем есть пакеты)

## Команды

```bash
npm install # устанавливает все зависимости
npm start # для запуска dev-сервера
npm run build # для сборки в production

test-dotnet # Тесты запускаются с Expecto. Тестируется код, скомпилированный в .NET
test-node # Компилирует F# в node.js и запускает mocha, то есть тестирутся исключительно js-код

# TODO: У fable-splitter есть watch mode. Но ещё лучше было бы организовать watch для Expecto

dotnet add src/App.fsproj package Package.Name # установить зависимость F#
```
