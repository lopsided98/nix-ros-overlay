
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosbash, rosconsole, roscpp, roscpp-serialization, rosunit, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-camera-calibration-parsers";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/noetic/camera_calibration_parsers/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "40beed2aa97e6f5c09b7f675d5f2bc98dc987d9626c8c55d54ff824af8560ba0";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosconsole ];
  checkInputs = [ rosbash rosunit ];
  propagatedBuildInputs = [ boost roscpp roscpp-serialization sensor-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
