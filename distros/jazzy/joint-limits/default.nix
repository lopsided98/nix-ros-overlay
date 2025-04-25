
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, backward-ros, generate-parameter-library, launch-ros, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-joint-limits";
  version = "4.28.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/joint_limits/4.28.1-1.tar.gz";
    name = "4.28.1-1.tar.gz";
    sha256 = "cb32a9cb508f43a4439e37c15496a746e2ed006d802e74e598fc09f17d0348ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock generate-parameter-library launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ backward-ros pluginlib rclcpp rclcpp-lifecycle realtime-tools trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Package with interfaces for handling of joint limits in controllers or in hardware. The package also implements Saturation Joint Limiter for position-velocity-acceleration set and other individual interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
