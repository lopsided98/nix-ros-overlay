
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, event-camera-msgs, openeb-vendor, rclcpp, rclcpp-components, ros-environment, std-srvs }:
buildRosPackage {
  pname = "ros-humble-metavision-driver";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metavision_driver-release/archive/release/humble/metavision_driver/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "97eb662902caed0c8b7cef5a840f410d93637c9020f7c4786dfefbd9436e5040";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ event-camera-msgs openeb-vendor rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS1 and ROS2 drivers for metavision based event cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
