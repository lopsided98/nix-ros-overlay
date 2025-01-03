
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, nmea-msgs, roscpp, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-sbg-driver";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros_driver-release/archive/release/noetic/sbg_driver/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "625a7422ed0c034dfd14686ae39182286c32689b7d659dc4dd8b54f7f53959e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs nmea-msgs roscpp rtcm-msgs sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS driver package for communication with the SBG navigation systems.";
    license = with lib.licenses; [ mit ];
  };
}
