
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, clang, prbt-support, prbt-moveit-config, trajectory-msgs, catkin, rostest, actionlib, roslaunch, roscpp, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-prbt-gazebo";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_gazebo/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "cdc567a1c08d0bf2cbf700148140f68fd5cc4109b22895975ecd7abb96f707c4";
  };

  buildType = "catkin";
  buildInputs = [ clang ];
  checkInputs = [ rostest roscpp trajectory-msgs actionlib ];
  propagatedBuildInputs = [ gazebo-ros prbt-support prbt-moveit-config roslaunch xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch prbt robot in an empty Gazebo world.'';
    license = with lib.licenses; [ asl20 ];
  };
}
