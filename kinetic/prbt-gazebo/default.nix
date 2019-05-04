
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, prbt-support, prbt-moveit-config, trajectory-msgs, catkin, rostest, actionlib, roslaunch, roscpp, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-prbt-gazebo";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_gazebo/0.4.8-0.tar.gz;
    sha256 = "ba89e7e134b03d55a1bfdc54713fbc4f62fedfc0b60fdb6739d4d8c1c87ea436";
  };

  checkInputs = [ rostest roscpp trajectory-msgs actionlib ];
  propagatedBuildInputs = [ gazebo-ros prbt-support prbt-moveit-config roslaunch xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch prbt robot in an empty Gazebo world.'';
    license = with lib.licenses; [ asl20 ];
  };
}
