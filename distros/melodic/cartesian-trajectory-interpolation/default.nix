
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-control-msgs, catkin, joint-trajectory-controller, roscpp, rospy, rosunit, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-cartesian-trajectory-interpolation";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/cartesian_trajectory_interpolation/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "27f3603ede3801f03053d58c974fd681b296656418df670d7d59cc59396234cd";
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
