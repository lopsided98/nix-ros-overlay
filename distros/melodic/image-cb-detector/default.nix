
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, calibration-msgs, catkin, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-cb-detector";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/melodic/image_cb_detector/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "b979f5db4bef45b9072a8392e5abb0f8608a5ebd06ba6dbbb5c51cb48e2ed335";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs calibration-msgs cv-bridge geometry-msgs image-transport message-filters message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provide a node that extracts checkerboard corners from ROS images.
    This package is still experimental and unstable.
    Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
