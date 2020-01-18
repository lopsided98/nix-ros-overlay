
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teleop-tools";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/teleop_tools/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "27f8c579a75432b85a5331b72f83a5ae9699bcc5bfdbcd3feedbd02be49c41d7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
