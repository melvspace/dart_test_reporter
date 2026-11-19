---
name: release
description: Prepare, version, validate, or publish Dart packages from this workspace using Melos. Load before changing a release version or generating release notes.
---

# Release packages with Melos

## Establish the release range

Work from a clean checkout of the intended release branch, normally `main`.
Fetch tags, use the Flutter version in [CI](../../../.github/workflows/dart.yml),
and run `flutter pub get` at the workspace root. Use the workspace's Melos
through `dart run melos`.

For each intended package, compare its local version, pub.dev version, and
most recent `<package>-v<version>` tag. Review the Conventional Commits that
touched the package after that tag.

```sh
git fetch --tags origin
git log --oneline test_reporter-v1.3.2..HEAD -- packages/test_reporter
```

If a published release has no matching tag, verify its source commit and
pass `--diff="<release-commit>..HEAD"` to the scoped version command. Without
a tag or explicit range, Melos can include the whole package history.
Resolve an uncertain baseline before generating notes. For a coordinated
release with different baselines, use each package's tag and reserve explicit
ranges for separate, scoped invocations.

## Generate and review versions

Let Melos infer the bump from Conventional Commits. Omit the positional
version argument so the commit range drives both the bump and the notes.

```sh
dart run melos version --scope=test_reporter --no-git-commit-version
git status --short
git diff
```

Repeat `--scope` for a coordinated release. Review every manifest and changelog
Melos changes, including dependent packages and the root changelog. Check that
each new version has a matching changelog heading and that entries describe
commits in its release range. If entries repeat older releases, fix the
baseline and regenerate. For a separately authorized exact-version release,
use the same verified range and review the generated entries against it.

## Validate and publish

Commit the reviewed release metadata for the approved packages. Run a scoped
dry run from that commit and resolve validation warnings before publishing.
Verify the proposed package names and versions. For a first release, verify
the package README and changelog are present. Pub.dev also checks name
similarity at upload time.

```sh
dart run melos publish --scope=test_reporter --yes
```

When pushing and publishing are in scope, push the release commit and check
its GitHub CI run. CI checks the code. The publish command requires a pub.dev
account with upload access for each package.

```sh
dart run melos publish --scope=test_reporter --no-dry-run --git-tag-version
git tag --points-at HEAD
```

Run the publish command from the validated release commit with the same
package scopes as the dry run. If a published dependency is still propagating
or a batch partially succeeds, check pub.dev before retrying and scope the
retry to pending packages.

Verify each package version on pub.dev and compare its archived
`CHANGELOG.md` with the release commit. Push only the tags for the verified
releases, for example `git push origin refs/tags/test_reporter-v1.4.0`.

References: [Melos version](https://melos.invertase.dev/commands/version),
[Melos publish](https://melos.invertase.dev/commands/publish).
