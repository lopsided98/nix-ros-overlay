
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pcl-conversions, poco, roscpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-bosch-locator-bridge";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/locator_ros_bridge-release/archive/release/noetic/bosch_locator_bridge/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "8d122dad07b506b904befd65db6d44d6f90b9c0c2306ac75fdd77dc58b70546f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs pcl-conversions poco roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface to Rexroth ROKIT Locator'';
    license = with lib.licenses; [ asl20 ];
  };
}
