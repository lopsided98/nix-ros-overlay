
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, event-camera-msgs, openeb-vendor, rclcpp, rclcpp-components, ros-environment, std-srvs }:
buildRosPackage {
  pname = "ros-humble-metavision-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metavision_driver-release/archive/release/humble/metavision_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4c2ed0a50d5827c9d379df905329eab552f69112ec9f4360aab0e1cf3b2157f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ event-camera-msgs openeb-vendor rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS1 and ROS2 drivers for metavision based event cameras";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
