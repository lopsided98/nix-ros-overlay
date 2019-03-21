
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, prbt-support, prbt-moveit-config, trajectory-msgs, catkin, rostest, actionlib, roslaunch, roscpp, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-prbt-gazebo";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_gazebo/0.5.2-0.tar.gz;
    sha256 = "87d8f8a2429571ed83ff657aaca17fdfa630a0e45d6c1a73ffa2acf8087e34ef";
  };

  checkInputs = [ rostest roscpp trajectory-msgs actionlib ];
  propagatedBuildInputs = [ gazebo-ros prbt-support prbt-moveit-config roslaunch xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch prbt robot in an empty Gazebo world.'';
    #license = lib.licenses.Apache 2.0;
  };
}
