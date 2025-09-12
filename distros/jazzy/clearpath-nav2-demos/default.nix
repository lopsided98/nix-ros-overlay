
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-nav2-demos";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_nav2_demos-release/archive/release/jazzy/clearpath_nav2_demos/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "cbaab946e64cdcb5b17b670a917b10641223ef416ccaa06e67f4ecef17482e3b";
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
