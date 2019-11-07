
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, prbt-support, prbt-moveit-config, trajectory-msgs, catkin, rostest, actionlib, roslaunch, roscpp, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-prbt-gazebo";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_gazebo/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "6b06417caf762c7d60695ce2a9a4aa9b03beb3f10aa45423097d935752e1810c";
  };

  buildType = "catkin";
  checkInputs = [ rostest roscpp trajectory-msgs actionlib ];
  propagatedBuildInputs = [ gazebo-ros prbt-support prbt-moveit-config roslaunch xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch prbt robot in an empty Gazebo world.'';
    license = with lib.licenses; [ asl20 ];
  };
}
