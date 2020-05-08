
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, gazebo-ros, gazebo-ros-control, prbt-moveit-config, prbt-support, roscpp, roslaunch, rostest, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-gazebo";
  version = "0.5.15-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_gazebo/0.5.15-1.tar.gz";
    name = "0.5.15-1.tar.gz";
    sha256 = "58316bb9962a5e4ca1a848465baeb2d8b093f7eb09219eb2216a53a855d779b4";
  };

  buildType = "catkin";
  checkInputs = [ actionlib roscpp rostest trajectory-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control prbt-moveit-config prbt-support roslaunch xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch prbt robot in an empty Gazebo world.'';
    license = with lib.licenses; [ asl20 ];
  };
}
