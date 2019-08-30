
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, control-msgs, trajectory-msgs, cob-script-server, cob-hardware-config, catkin, gazebo-plugins, rostest, cob-gazebo-ros-control, cob-bringup, rospy, cob-supported-robots, roslaunch, cob-default-robot-config, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo";
  version = "0.7.1-r2";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo/0.7.1-2.tar.gz;
    sha256 = "25c3453a88874c47ff3270f365c7cf9272983c63acf3de314ca58b20fa2a1fe5";
  };

  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ gazebo-ros control-msgs trajectory-msgs cob-script-server cob-hardware-config gazebo-plugins rostest cob-gazebo-ros-control cob-bringup rospy roslaunch cob-default-robot-config gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
