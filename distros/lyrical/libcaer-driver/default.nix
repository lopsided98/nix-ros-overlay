
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, camera-info-manager, event-camera-msgs, image-transport, libcaer-vendor, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-libcaer-driver";
  version = "1.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer_driver-release/archive/release/lyrical/libcaer_driver/1.5.7-1.tar.gz";
    name = "1.5.7-1.tar.gz";
    sha256 = "91e159f93f7e783481c7e3f0b0e0a112d53276c29e21b26d40b886439460b28b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ camera-info-manager event-camera-msgs image-transport libcaer-vendor rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS2 driver for event base sensors using libcaer";
    license = with lib.licenses; [ asl20 ];
  };
}
