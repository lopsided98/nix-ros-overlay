
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, tinyxml, tinyxml-vendor, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-foxy-urdf";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/foxy/urdf/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "9d45dc6f02ec7fbda45bab02d3f26dde5be8d1de1e712700a9787196d15c233d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tinyxml tinyxml-vendor urdfdom urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
