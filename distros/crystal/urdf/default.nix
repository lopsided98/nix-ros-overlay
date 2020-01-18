
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, tinyxml, tinyxml-vendor, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-crystal-urdf";
  version = "2.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/crystal/urdf/2.2.0-0.tar.gz";
    name = "2.2.0-0.tar.gz";
    sha256 = "541212cb509c15483e69146739bb03deae092d7a70173b8eda23c33bd391e307";
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
