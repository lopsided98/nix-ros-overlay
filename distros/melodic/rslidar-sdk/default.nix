
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libpcap, libyamlcpp, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rslidar-sdk";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/rslidar_sdk-release/archive/release/melodic/rslidar_sdk/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "d8cd9cad1a9edfcc06d0c7ec8d02456f466eb384cd422d789833057f50d958ca";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libpcap libyamlcpp pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
