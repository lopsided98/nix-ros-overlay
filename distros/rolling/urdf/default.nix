
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, pluginlib, rcutils, tinyxml-2, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdf";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/rolling/urdf/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "0e30bfcd25ca9f8a278a93e7100ba43350eaa2f95f5e1c542a611dd721e209aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-google-benchmark ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib rcutils tinyxml-2 urdf-parser-plugin urdfdom urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-ros-core ];

  meta = {
    description = "This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
