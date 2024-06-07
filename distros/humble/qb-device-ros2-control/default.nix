
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, controller-manager, hardware-interface, pluginlib, qb-device-msgs, rclcpp, rclcpp-lifecycle, transmission-interface }:
buildRosPackage {
  pname = "ros-humble-qb-device-ros2-control";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros2-release/get/release/humble/qb_device_ros2_control/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "2b285ef49fa906fc5669021e587d976f0e4dfcd03b2b74a16ba4e64b9b6b283f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ controller-manager hardware-interface pluginlib qb-device-msgs rclcpp rclcpp-lifecycle transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package of `ros2_control` hardware for qb robotics Devices with transmission interface.";
    license = with lib.licenses; [ bsd3 ];
  };
}
