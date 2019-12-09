
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, cob-hardware-config, trajectory-msgs, cob-default-robot-config, roslaunch, catkin, cob-bringup, gazebo-ros-control, rospy, gazebo-ros, cob-gazebo-ros-control, cob-script-server, rostest, gazebo-plugins, control-msgs }:
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
  propagatedBuildInputs = [ cob-hardware-config cob-default-robot-config trajectory-msgs roslaunch cob-bringup gazebo-ros-control rospy gazebo-ros cob-gazebo-ros-control cob-script-server rostest gazebo-plugins control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
