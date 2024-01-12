
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy-teleop, key-teleop, mouse-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-noetic-teleop-tools";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/noetic/teleop_tools/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "984b684cfb74e0e2b3e9867061930f956ada8a99a647c09d8b3afbba6da8a7ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy-teleop key-teleop mouse-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
