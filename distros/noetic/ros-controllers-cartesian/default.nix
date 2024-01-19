
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers-cartesian";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/ros_controllers_cartesian/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "c9809ea177dcb158ec15cd20bcd3d8de96a6d235db4b04baa825bf653e7dcf36";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Cartesian ROS controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
