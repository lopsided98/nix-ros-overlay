
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pcl-conversions, poco, roscpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-bosch-locator-bridge";
  version = "1.0.9-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/locator_ros_bridge-release/archive/release/noetic/bosch_locator_bridge/1.0.9-3.tar.gz";
    name = "1.0.9-3.tar.gz";
    sha256 = "a9fc3414d5071e21f2cd854e18e25bb4e479e64292de1ba10dc2ad40c98a969c";
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
