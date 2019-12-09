
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, xacro, actionlib, catkin, prbt-support, gazebo-ros-control, roscpp, gazebo-ros, prbt-moveit-config, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-prbt-gazebo";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_gazebo/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "96c5b2d363f9fafa623e0b21e7eda59d8188152c8d1f20324c2031b036d7c9d6";
  };

  buildType = "catkin";
  checkInputs = [ trajectory-msgs actionlib rostest roscpp ];
  propagatedBuildInputs = [ xacro prbt-support gazebo-ros-control gazebo-ros prbt-moveit-config roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch prbt robot in an empty Gazebo world.'';
    license = with lib.licenses; [ asl20 ];
  };
}
