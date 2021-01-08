
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ignition, image-transport, ros-ign-bridge, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-image";
  version = "0.111.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign_image/0.111.0-1.tar.gz";
    name = "0.111.0-1.tar.gz";
    sha256 = "689bdefbecb3826cb6c2fcea4191b7fe23545635f9be4e184e0090f81112f5f0";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ignition.msgs5 ignition.transport8 image-transport ros-ign-bridge roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Image utilities for Ignition simulation with ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
