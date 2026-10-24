
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bms-broadcaster";
  version = "2.9.18-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bms_broadcaster/2.9.18-1.tar.gz";
    name = "2.9.18-1.tar.gz";
    sha256 = "ffccb1217d45a8cc3ec4d8643c55678e9cc9568e9545f23024a33d7661c25754";
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
