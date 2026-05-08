
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-qos-utils";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_qos_utils/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "8df86617e18a7bf0196b6cbea3860ecfb7575fa5d201e91e4e1edcb23ab76dd7";
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
