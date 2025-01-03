
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-control-msgs, catkin, joint-trajectory-controller, roscpp, rospy, rosunit, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-cartesian-trajectory-interpolation";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_trajectory_interpolation/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "4dc6ef691cca2113e439e52d97d6e82ff8c12d7ae207d68b74211a522b2f28a8";
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
