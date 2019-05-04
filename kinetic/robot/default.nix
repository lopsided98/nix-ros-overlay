
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-model, filters, ros-base, control-msgs, executive-smach, catkin, diagnostics, geometry, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-robot";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/robot/1.3.2-0.tar.gz;
    sha256 = "8bb734ff4101270270249ad5f1321fab9062e969e2ac33ac7841ccafa8ea9287";
  };

  propagatedBuildInputs = [ robot-model filters ros-base control-msgs executive-smach diagnostics geometry robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
