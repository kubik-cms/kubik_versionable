# kubik_versionable

Editorial content versions with a single live published snapshot for Kubik CMS.

Depends on [kubik_publishable](https://github.com/kubik-cms/kubik_publishable).

## Installation

```ruby
gem "kubik_versionable", github: "kubik-cms/kubik_versionable"
```

For local development, use `path: "vendor/kubik_versionable"` or a devcontainer mount at `/kubik_versionable`.

## Usage

```ruby
class Page < ApplicationRecord
  include Kubik::Versionable

  kubik_versionable fields: %i[title body], meta_tag: true
end
```

Admin versioning UI is wired through `Kubik::VersionableAdminAction`. Public site reads use `published_snapshot`.
