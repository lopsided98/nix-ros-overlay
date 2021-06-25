
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-control-msgs, catkin, joint-trajectory-controller, roscpp, rospy, rosunit, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-cartesian-trajectory-interpolation";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/cartesian_trajectory_interpolation/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "106dcf4af4f487b26db8189c1e2b8b9bb8cbb00d33ac9cb505095945c901a9f6";
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
