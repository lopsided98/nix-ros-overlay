
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-realsense2-description";
  version = "4.56.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/jazzy/realsense2_description/4.56.4-1.tar.gz";
    name = "4.56.4-1.tar.gz";
    sha256 = "308dd4f7ec9f1c555bb2c8cdfb2e05c8fe74e707c7894f3b7c5221901ab2b251";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros rclcpp rclcpp-components realsense2-camera-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RealSense description package for Intel 3D D400 cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
