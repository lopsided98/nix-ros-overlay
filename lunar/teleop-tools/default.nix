
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, key-teleop, joy-teleop, teleop-tools-msgs, catkin }:
buildRosPackage {
  pname = "ros-lunar-teleop-tools";
  version = "0.2.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/lunar/teleop_tools/0.2.6-0.tar.gz;
    sha256 = "879acb7d3fe969b13ca9a5a723e908b8b2f243aeadbc2f0bff96532324030a1d";
  };

  propagatedBuildInputs = [ key-teleop joy-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    #license = lib.licenses.BSD;
  };
}
