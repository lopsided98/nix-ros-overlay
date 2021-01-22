
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, tinyxml, tinyxml-vendor, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-dashing-urdf";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/dashing/urdf/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "23ea44ab3658a060d2f796644bdad2c33d6e28dd6cf204aef509e19b4a02b28b";
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
