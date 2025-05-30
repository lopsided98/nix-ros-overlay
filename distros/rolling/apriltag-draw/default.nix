
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-msgs, cv-bridge, image-transport, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-apriltag-draw";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/rolling/apriltag_draw/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c8c460a4f3d8740796055ad2c3ddc2b71586366e7d01bbd31bf5eff1bedb5f4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "ROS package for drawing apriltags on image";
    license = with lib.licenses; [ asl20 ];
  };
}
