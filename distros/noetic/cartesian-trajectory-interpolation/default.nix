
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-control-msgs, catkin, joint-trajectory-controller, roscpp, rospy, rosunit, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-cartesian-trajectory-interpolation";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_trajectory_interpolation/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "40b4294cc4e8a4072c862714ba343b6a00446c0e79e4d31c420028cd3fbba31d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cartesian-control-msgs joint-trajectory-controller roscpp rospy tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartesian trajectory interpolation as a standalone library'';
    license = with lib.licenses; [ asl20 ];
  };
}
