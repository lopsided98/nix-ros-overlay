
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, message-filters, geometry-msgs, std-msgs, actionlib, catkin, image-transport, calibration-msgs, cv-bridge, actionlib-msgs, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-image-cb-detector";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/image_cb_detector/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "a0151e6621779e4886b5b2a87721d1692375bb3a42defd682ced8175ed043fb8";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs actionlib image-transport calibration-msgs cv-bridge actionlib-msgs roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs actionlib image-transport calibration-msgs cv-bridge actionlib-msgs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provide a node that extracts checkerboard corners from ROS images.
    This package is still experimental and unstable.
    Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
