
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-control-msgs, catkin, joint-trajectory-controller, roscpp, rospy, rosunit, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-cartesian-trajectory-interpolation";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_trajectory_interpolation/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "91f1d8f6bf5bcb1028c322ee3f0c43d190dba9434dcea7fb566780794b23e7a0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cartesian-control-msgs joint-trajectory-controller roscpp rospy tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Cartesian trajectory interpolation as a standalone library";
    license = with lib.licenses; [ asl20 ];
  };
}
