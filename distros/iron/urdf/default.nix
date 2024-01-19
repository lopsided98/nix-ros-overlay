
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, tinyxml2-vendor, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-iron-urdf";
  version = "2.8.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/iron/urdf/2.8.2-3.tar.gz";
    name = "2.8.2-3.tar.gz";
    sha256 = "cc28e7b13b8580f21efba2b8ac6b0463522273e1636b410e968218c8061ff021";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-google-benchmark ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib tinyxml2-vendor urdf-parser-plugin urdfdom urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
