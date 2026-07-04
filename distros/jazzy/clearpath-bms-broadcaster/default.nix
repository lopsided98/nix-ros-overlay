
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bms-broadcaster";
  version = "2.9.10-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bms_broadcaster/2.9.10-2.tar.gz";
    name = "2.9.10-2.tar.gz";
    sha256 = "84f64e79896a2d3082f7f94c49c93c2e0355aa0acdb4e98e5e925c75f1367e71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control battery state broadcaster controller";
    license = with lib.licenses; [ asl20 ];
  };
}
