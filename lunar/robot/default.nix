
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-model, filters, ros-base, control-msgs, executive-smach, catkin, diagnostics, geometry, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-lunar-robot";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/robot/1.3.2-0.tar.gz;
    sha256 = "a50ec98bcdff85a2ee78cb907080b9929bcd222fc2e43476364e6bdfb57047d7";
  };

  propagatedBuildInputs = [ robot-model filters ros-base control-msgs executive-smach diagnostics geometry robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    #license = lib.licenses.BSD;
  };
}
