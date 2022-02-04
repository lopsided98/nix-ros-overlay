
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libpcap, libyamlcpp, pcl, pcl-conversions, rclcpp, rslidar-msg, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rslidar-sdk";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/rslidar_sdk-release/archive/release/galactic/rslidar_sdk/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "21260a72a9bcb828f69ed28a80b013c25f3221105d9c1a05e98b84a8ec09663b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libpcap libyamlcpp pcl pcl-conversions rclcpp rslidar-msg sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
