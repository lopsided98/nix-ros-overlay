
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, rcutils, tinyxml-2, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-lyrical-urdf";
  version = "2.13.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/lyrical/urdf/2.13.2-3.tar.gz";
    name = "2.13.2-3.tar.gz";
    sha256 = "bc2faee5ac9a7f9b48dd13f7a0334ad42f83fd6da22e3777baf300e434460e1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-google-benchmark ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib rcutils tinyxml-2 urdf-parser-plugin urdfdom urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
