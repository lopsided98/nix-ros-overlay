
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, camera-info-manager, event-camera-msgs, image-transport, libcaer, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-libcaer-driver";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer_driver-release/archive/release/rolling/libcaer_driver/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "4561525b71ec470589bdddaf783c47b0431efcbe10a1523b963b21e7fce81aa1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ camera-info-manager event-camera-msgs image-transport libcaer rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = ''ROS2 driver for event base sensors using libcaer'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
