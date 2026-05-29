
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bms-broadcaster";
  version = "2.9.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bms_broadcaster/2.9.8-1.tar.gz";
    name = "2.9.8-1.tar.gz";
    sha256 = "99d5d2df0d3791fea2d146102932338862b94f4b0e3cabcc99ea8090095636f4";
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
