
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cv-bridge, image-cb-detector, message-filters, roscpp, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-cb-detector";
  version = "0.10.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/noetic/laser_cb_detector/0.10.15-1.tar.gz";
    name = "0.10.15-1.tar.gz";
    sha256 = "d5647f95c0a0ad831cdd3c825063cb8cef0baedf204467db0ea72a4f1e035ca7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cv-bridge image-cb-detector message-filters roscpp settlerlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extracts checkerboard corners from a dense laser snapshot.
     This package is experimental and unstable. Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
