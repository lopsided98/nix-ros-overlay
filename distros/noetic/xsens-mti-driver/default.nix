
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-xsens-mti-driver";
  version = "0.2021.4-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/xsens_mti_driver-release/archive/release/noetic/xsens_mti_driver/0.2021.4-1.tar.gz";
    name = "0.2021.4-1.tar.gz";
    sha256 = "841720213947785b0b411b43b9c18967ccdc93b25db700ee22a95a3a89053d84";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for Xsens MTi IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
