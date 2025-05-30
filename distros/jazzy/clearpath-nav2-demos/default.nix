
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-nav2-demos";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_nav2_demos-release/archive/release/jazzy/clearpath_nav2_demos/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "8667717ab3812c631dec12cdaf6325e5b438200399068d4724da4c84be9ddec6";
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
