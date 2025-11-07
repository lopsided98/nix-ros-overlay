
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-updater }:
buildRosPackage {
  pname = "ros-humble-omni-base-rgbd-sensors";
  version = "2.19.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_rgbd_sensors/2.19.1-1.tar.gz";
    name = "2.19.1-1.tar.gz";
    sha256 = "cda39bca2b7d69175949a3e5e6f18d3491386b625df6a4fb53420e9c20a7e1fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-updater ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific RGBD sensors module and params files.";
    license = with lib.licenses; [ asl20 ];
  };
}
