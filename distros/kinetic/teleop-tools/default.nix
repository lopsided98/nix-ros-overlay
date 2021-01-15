
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teleop-tools";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/teleop_tools/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "36f6aedb61970f9634660a25cb33c482860fafb9583087cbc7caabccf09d54a4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
