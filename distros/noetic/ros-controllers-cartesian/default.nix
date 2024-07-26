
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers-cartesian";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/ros_controllers_cartesian/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "c436da2b475cf766f6d09b3b48c155f9f35fa7d9cd1b0852a3b12c3b7de23a62";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Metapackage for Cartesian ROS controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
