
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers-cartesian";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/ros_controllers_cartesian/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "eb3a8412f517dd6aa3a06ab62c52e36fbc0cda9b23e7a504daf25989c4e23e8b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Cartesian ROS controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
