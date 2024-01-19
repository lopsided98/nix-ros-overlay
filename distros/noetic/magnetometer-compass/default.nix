
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, compass-msgs, cras-cpp-common, geographiclib, geometry-msgs, imu-transformer, message-filters, nodelet, roscpp, roslib, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-magnetometer-compass";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/compass/-/archive/release/noetic/magnetometer_compass/1.0.3-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "d9ffa71f23124ce98a4954a3467a0b8227f5ea8ef41f66a5277f0cc1adaaf7b8";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin cras-cpp-common ];
  propagatedBuildInputs = [ compass-msgs geographiclib geometry-msgs imu-transformer message-filters nodelet roscpp roslib sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Compass based on a 3-axis magnetometer, attitude readings and possibly also GPS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
