
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, tinyxml, tinyxml-vendor, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-foxy-urdf";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/foxy/urdf/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "bf569f43cb821cad9d1bc0ef7d51ed9a00180ab67afe4d7b9e8ac64b82d3550d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
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
