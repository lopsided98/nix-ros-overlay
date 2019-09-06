
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, key-teleop, joy-teleop, teleop-tools-msgs, catkin }:
buildRosPackage {
  pname = "ros-melodic-teleop-tools";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/teleop_tools/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "13fa3947b654ea8548445a755c14e39bd83c9aa2e5df261d75febda38d013594";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ key-teleop joy-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
