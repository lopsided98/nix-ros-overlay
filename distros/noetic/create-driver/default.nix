
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-msgs, diagnostic-msgs, diagnostic-updater, geometry-msgs, libcreate, nav-msgs, roscpp, roslint, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-create-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/noetic/create_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d8761fd06116c6ac9a6e7b4a20e6b8f7f92da0bde6f49557865ab81f60f5eb0d";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ create-msgs diagnostic-msgs diagnostic-updater geometry-msgs libcreate nav-msgs roscpp sensor-msgs std-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for iRobot's Create and Roomba platforms, based on libcreate'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
