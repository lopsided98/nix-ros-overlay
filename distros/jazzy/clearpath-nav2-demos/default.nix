
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-nav2-demos";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_nav2_demos-release/archive/release/jazzy/clearpath_nav2_demos/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "82d9ee042cf73ced22696b5a750ac09603b1a3206067c76e1cc574c0473e1bc1";
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
