
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-qos-utils";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_qos_utils/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "32e5ba51d016c03c8be45dd1da9e86555d46d966f6592f1ae0df9269a2cba031";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Autoware QoS Utils provides QoS compatibility utilities for different ROS 2 distributions.";
    license = with lib.licenses; [ asl20 ];
  };
}
