
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-msgs, cv-bridge, image-transport, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-apriltag-detector";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/iron/apriltag_detector/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "4ecc1b21ad694a9c748ff97d43671258b92fce4f477c34bcde70f1af9d480658";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS package for apriltag detection";
    license = with lib.licenses; [ asl20 ];
  };
}
