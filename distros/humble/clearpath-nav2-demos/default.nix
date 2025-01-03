
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-clearpath-nav2-demos";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_nav2_demos-release/archive/release/humble/clearpath_nav2_demos/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4b54a4831c34b4a2f5c9844cc4727ef95914786ffb5587796ee999af6dba13ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config nav2-bringup slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 demos for Clearpath robots";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
