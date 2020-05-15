
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-eloquent-teleop-tools";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/eloquent/teleop_tools/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6c75d9e2368b0578049c6e1df83aeb63d89bc70c6a564814f5eba72a11f5b746";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
