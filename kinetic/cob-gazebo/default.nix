
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, control-msgs, trajectory-msgs, cob-script-server, cob-hardware-config, catkin, gazebo-plugins, rostest, cob-gazebo-ros-control, cob-bringup, rospy, cob-supported-robots, roslaunch, cob-default-robot-config, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "3a4246e7865887e7acdd67409437e65cb9b7f8c04df8f846074aea641fc83305";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ gazebo-ros control-msgs trajectory-msgs cob-script-server cob-hardware-config gazebo-plugins rostest cob-gazebo-ros-control cob-bringup rospy roslaunch cob-default-robot-config gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
