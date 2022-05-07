
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-default-robot-config, cob-gazebo-ros-control, cob-hardware-config, cob-script-server, cob-supported-robots, control-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, roslaunch, rospy, rostest, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo";
  version = "0.7.5-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo/0.7.5-2.tar.gz";
    name = "0.7.5-2.tar.gz";
    sha256 = "aa8890823d1ce3a3beca56e223cde29f9892b53913a73329811e41f669b8bfd0";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-bringup cob-default-robot-config cob-gazebo-ros-control cob-hardware-config cob-script-server control-msgs gazebo-plugins gazebo-ros gazebo-ros-control rospy rostest trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
