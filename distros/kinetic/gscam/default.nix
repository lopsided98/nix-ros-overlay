
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, cv-bridge, gst-plugins-base, gstreamer, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gscam";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/gscam-release/archive/release/kinetic/gscam/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "221166b3df8e0658a96aec05f0da228d79d3dfee2052b463dfcc0fb603c5de0f";
  };

  buildType = "catkin";
  buildInputs = [ gst-plugins-base gstreamer ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager cv-bridge image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
