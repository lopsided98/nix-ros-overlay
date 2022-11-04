
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, cv-bridge, gst_all_1, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-gscam";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/gscam-release/archive/release/melodic/gscam/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "bbd838538ef852691f2de43b5b0a5541e0b8f4a8bd1c5ef7d0bb5c5387491996";
  };

  buildType = "catkin";
  buildInputs = [ catkin gst_all_1.gst-plugins-base gst_all_1.gstreamer ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager cv-bridge image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
