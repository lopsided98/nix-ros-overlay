
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, image-transport, sensor-msgs, camera-info-manager, cv-bridge, gst_all_1, catkin, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-melodic-gscam";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/gscam-release/archive/release/melodic/gscam/1.0.1-0.tar.gz;
    sha256 = "bbd838538ef852691f2de43b5b0a5541e0b8f4a8bd1c5ef7d0bb5c5387491996";
  };

  buildInputs = [ camera-calibration-parsers image-transport sensor-msgs camera-info-manager cv-bridge gst_all_1.gstreamer roscpp gst_all_1.gst-plugins-base nodelet ];
  propagatedBuildInputs = [ camera-calibration-parsers image-transport sensor-msgs camera-info-manager cv-bridge nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
