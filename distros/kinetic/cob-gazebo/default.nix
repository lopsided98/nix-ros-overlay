
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-default-robot-config, cob-gazebo-ros-control, cob-hardware-config, cob-script-server, cob-supported-robots, control-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, roslaunch, rospy, rostest, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "435efe1e3a29de14a9f257a3e74ebfedead2a2656ab036db6e413e025cb11b67";
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
