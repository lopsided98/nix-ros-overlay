
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-control-msgs, catkin, joint-trajectory-controller, roscpp, rospy, rosunit, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-cartesian-trajectory-interpolation";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_trajectory_interpolation/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "d2a79242bd158696e4d9a9c5f0c393b5af8ebcf86c3844452a544ffcb3f1a00d";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cartesian-control-msgs joint-trajectory-controller roscpp rospy tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartesian trajectory interpolation as a standalone library'';
    license = with lib.licenses; [ asl20 ];
  };
}
