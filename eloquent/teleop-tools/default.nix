
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-eloquent-teleop-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/eloquent/teleop_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5cdabeedfc9e29af22208aaa1c292eb3052ed4dba97b5de53f5d4749a73a71da";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
