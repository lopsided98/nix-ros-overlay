
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pkg-config, rosbash, rosconsole, roscpp, roscpp-serialization, rosunit, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-camera-calibration-parsers";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/noetic/camera_calibration_parsers/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "9a61cdd6c7c363a7edb9e58315680826f1fccd4ed43418b4a3ff02c5fad30503";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config rosconsole ];
  checkInputs = [ rosbash rosunit ];
  propagatedBuildInputs = [ boost roscpp roscpp-serialization sensor-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
