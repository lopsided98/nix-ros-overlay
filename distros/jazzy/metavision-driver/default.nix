
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, event-camera-msgs, openeb-vendor, rclcpp, rclcpp-components, ros-environment, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-metavision-driver";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metavision_driver-release/archive/release/jazzy/metavision_driver/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "ce62a6066389d6952f97ffc8987591b053c91c7d838b998fed38a8f101e13494";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ event-camera-msgs openeb-vendor rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS2 driver for metavision based event cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
