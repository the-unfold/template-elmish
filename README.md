# template-elmish

Назначение данного шаблона: иметь возможность обновлять зависимости чаще и лучше понимать происходящее.
Он отвечает следующим требованиям:

* имеет команду сборки
* имеет github workflow, который собирает проект при каждом push любую в ветку

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

## Требования к системе:

node.js, .net core

## Команды

```bash
npm install # устанавливает все зависимости
npm start # для запуска dev-сервера
npm run build # для сборки в production
dotnet add src/App.fsproj package Package.Name # установить зависимость F#
```
