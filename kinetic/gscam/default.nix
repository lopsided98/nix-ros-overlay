
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, gst-plugins-base, camera-info-manager, catkin, image-transport, cv-bridge, nodelet, roscpp, gstreamer, camera-calibration-parsers }:
buildRosPackage {
  pname = "ros-kinetic-gscam";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/gscam-release/archive/release/kinetic/gscam/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "221166b3df8e0658a96aec05f0da228d79d3dfee2052b463dfcc0fb603c5de0f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs gst-plugins-base camera-info-manager image-transport cv-bridge nodelet roscpp gstreamer camera-calibration-parsers ];
  propagatedBuildInputs = [ sensor-msgs camera-info-manager image-transport cv-bridge nodelet roscpp camera-calibration-parsers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
