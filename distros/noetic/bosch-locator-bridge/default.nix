
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pcl-conversions, poco, roscpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-bosch-locator-bridge";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/locator_ros_bridge-release/archive/release/noetic/bosch_locator_bridge/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "86527b40f4c845eb42c3c7d6279512cdb3d431ed6174b8753a2541c39f0e643f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs pcl-conversions poco roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS interface to Rexroth ROKIT Locator";
    license = with lib.licenses; [ asl20 ];
  };
}
