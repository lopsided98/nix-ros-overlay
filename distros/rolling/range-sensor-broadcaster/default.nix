
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-range-sensor-broadcaster";
  version = "3.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/range_sensor_broadcaster/3.16.0-1.tar.gz";
    name = "3.16.0-1.tar.gz";
    sha256 = "0273c84b877372df06200f5a2b52c28302d673f20376fad35a700dc1fee9819c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish readings of Range sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
