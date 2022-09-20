
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-melodic-teleop-tools";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/teleop_tools/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "d45ea282f8d899d5213a3f616d5c09e37779e81bc5f8b5a9a2fa53896a039ff8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
