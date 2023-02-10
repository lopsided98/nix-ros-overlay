
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pcl-conversions, poco, roscpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-bosch-locator-bridge";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/locator_ros_bridge-release/archive/release/noetic/bosch_locator_bridge/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "50b11444e5a90f8815362a29b06d981b4f5ee05df1c368c2cc4b35fc281887d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs pcl-conversions poco roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface to Rexroth ROKIT Locator'';
    license = with lib.licenses; [ asl20 ];
  };
}
