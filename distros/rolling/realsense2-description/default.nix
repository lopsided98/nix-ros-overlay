
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-rolling-realsense2-description";
  version = "4.56.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/rolling/realsense2_description/4.56.4-3.tar.gz";
    name = "4.56.4-3.tar.gz";
    sha256 = "9099cf5c2eac04916280312c05a84fad1f3d0e16c575e0fcba2bfc22d003fc8e";
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
