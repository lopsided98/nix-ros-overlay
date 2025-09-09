
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, grid-map-ros, image-transport, laser-geometry, message-filters, nav-msgs, nodelet, octomap-msgs, pcl-conversions, pcl-ros, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-util";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_util/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "317c06d9907f5d1999c8fe184e6f0c402ad54a1483a27d9c3bc77a9e721ff685";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge grid-map-ros image-transport laser-geometry message-filters nav-msgs nodelet octomap-msgs pcl-conversions pcl-ros pluginlib roscpp rtabmap-conversions rtabmap-msgs sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's various useful nodes and nodelets.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
