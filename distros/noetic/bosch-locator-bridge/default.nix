
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pcl-conversions, poco, roscpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-bosch-locator-bridge";
  version = "1.0.14-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/locator_ros_bridge-release/archive/release/noetic/bosch_locator_bridge/1.0.14-2.tar.gz";
    name = "1.0.14-2.tar.gz";
    sha256 = "186c1752651619a403322207aef572008791be5371d76204f79a6bd0a2b83c14";
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
