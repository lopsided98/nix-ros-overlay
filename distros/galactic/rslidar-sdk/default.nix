
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libpcap, libyamlcpp, pcl, pcl-conversions, rclcpp, rslidar-msg, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rslidar-sdk";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rslidar_sdk-release/archive/release/galactic/rslidar_sdk/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "a0299c63831f8e4a89abbc0f8cd57c0d64bbf0948aaa4570777004c138709247";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libpcap libyamlcpp pcl pcl-conversions rclcpp rslidar-msg sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
