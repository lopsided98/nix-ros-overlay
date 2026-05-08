
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-qos-utils";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_qos_utils/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "71cb5a497c1662c3459b5e7a040978fd23d42cee5d0336bfa80a778b61b01faa";
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
