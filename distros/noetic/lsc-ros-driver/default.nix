
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-lsc-ros-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AutonicsLiDAR-release/lsc_ros_driver-release/archive/release/noetic/lsc_ros_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "27f3f20c333d932eeeb3113e5e1e8fffe71bc6eb4afd607075a49711c6774076";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-updater self-test ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver package for LSC-C Series'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
