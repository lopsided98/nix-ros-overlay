
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, camera-calibration-parsers, cv-bridge, sensor-msgs, gst_all_1, catkin, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-lunar-gscam";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/gscam-release/archive/release/lunar/gscam/1.0.0-0.tar.gz;
    sha256 = "5aae479a2334ccee471588645fa40d6e870e6eaceb66cd6ca89b547e694e76e4";
  };

  buildInputs = [ camera-info-manager camera-calibration-parsers image-transport cv-bridge sensor-msgs gst_all_1.gstreamer roscpp gst_all_1.gst-plugins-base nodelet ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge nodelet camera-calibration-parsers image-transport sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    #license = lib.licenses.BSD;
  };
}
