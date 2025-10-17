
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ads-vendor, ament-cmake, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-beckhoff-ads-hardware-interface";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/b-robotized/beckhoff_ads_driver-release/archive/release/kilted/beckhoff_ads_hardware_interface/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b2441b65aba0cde2f45057a90071f1830ad80751e69cb7ee96982b73325b44bd";
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
