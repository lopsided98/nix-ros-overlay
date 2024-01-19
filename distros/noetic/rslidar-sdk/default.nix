
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libpcap, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-rslidar-sdk";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rslidar_sdk-release/archive/release/noetic/rslidar_sdk/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "a3612756dc300bd8ee422b1d99dc46bc317814c568d5491fc987c72ce65f8d09";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libpcap pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
