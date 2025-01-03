
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libpcap, rclcpp, rslidar-msg, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rslidar-sdk";
  version = "1.5.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rslidar_sdk-release/archive/release/jazzy/rslidar_sdk/1.5.16-1.tar.gz";
    name = "1.5.16-1.tar.gz";
    sha256 = "0df6e3462ad75b7985f6f14484b31c7d59936e67baa143780798ce4cd999c4cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libpcap rclcpp rslidar-msg sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rslidar_sdk package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
