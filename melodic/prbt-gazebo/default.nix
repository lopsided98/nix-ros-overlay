
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, prbt-support, prbt-moveit-config, trajectory-msgs, catkin, rostest, actionlib, roslaunch, roscpp, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-prbt-gazebo";
  version = "0.5.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_gazebo/0.5.10-1.tar.gz";
    name = "0.5.10-1.tar.gz";
    sha256 = "32fb0dea7f5251366e0c0f6addd1bcecb4866bb07e1b9d822997ae60d675e43e";
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
