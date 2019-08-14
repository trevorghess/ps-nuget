$pkg_name="ps-nuget"
$pkg_origin="th_demo"
$pkg_version="2.8.5.208"
$pkg_license=('MIT')
$pkg_bin_dirs=@("bin")

function Invoke-Build {
    Copy-Item "$PLAN_CONTEXT/nuget/*" -Destination "$HAB_CACHE_SRC_PATH/${pkg_name}-${pkg_version}" -Recurse
  }
function Invoke-Install {
  Copy-Item "$HAB_CACHE_SRC_PATH/${pkg_name}-${pkg_version}" "$pkg_prefix/bin/nuget/" -Force -Recurse
}