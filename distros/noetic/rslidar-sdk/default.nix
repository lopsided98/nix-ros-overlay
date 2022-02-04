
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libpcap, libyamlcpp, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rslidar-sdk";
  version = "1.3.0-r4";

  src = fetchurl {
    url = "https://github.com/nobleo/rslidar_sdk-release/archive/release/noetic/rslidar_sdk/1.3.0-4.tar.gz";
    name = "1.3.0-4.tar.gz";
    sha256 = "f19e7aff675714176889e6f190bfae965f5c047d84a25b8d20f64e445dea616b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libpcap libyamlcpp pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
