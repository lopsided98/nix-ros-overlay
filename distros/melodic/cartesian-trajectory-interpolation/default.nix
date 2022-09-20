
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-control-msgs, catkin, joint-trajectory-controller, roscpp, rospy, rosunit, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-cartesian-trajectory-interpolation";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/cartesian_trajectory_interpolation/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "050821f108081fe72ce6bf58ae02ebb96721283d8eed13f4f8658a2995038e17";
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
