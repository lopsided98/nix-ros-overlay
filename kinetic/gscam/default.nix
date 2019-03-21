
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, camera-calibration-parsers, gstreamer, cv-bridge, catkin, image-transport, sensor-msgs, nodelet, gst-plugins-base, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-gscam";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/gscam-release/archive/release/kinetic/gscam/0.2.0-0.tar.gz;
    sha256 = "221166b3df8e0658a96aec05f0da228d79d3dfee2052b463dfcc0fb603c5de0f";
  };

  propagatedBuildInputs = [ camera-info-manager cv-bridge nodelet camera-calibration-parsers image-transport sensor-msgs roscpp ];
  nativeBuildInputs = [ camera-info-manager camera-calibration-parsers image-transport cv-bridge sensor-msgs gstreamer roscpp catkin gst-plugins-base nodelet ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    #license = lib.licenses.BSD;
  };
}
