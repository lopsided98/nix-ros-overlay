
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ads-vendor, ament-cmake, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-beckhoff-ads-hardware-interface";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/b-robotized/beckhoff_ads_driver-release/archive/release/jazzy/beckhoff_ads_hardware_interface/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f214a2c4d78e15328581297b3e03ebd67ce2b265b15374ae5ecc63b610f172c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ads-vendor hardware-interface pluginlib rclcpp rclcpp-lifecycle yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ros2Control hardware interface for integrating with Beckhoff PLC";
    license = with lib.licenses; [ asl20 ];
  };
}
