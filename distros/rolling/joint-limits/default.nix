
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, backward-ros, fmt, generate-parameter-library, launch-ros, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-rolling-joint-limits";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/joint_limits/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "9d788e516e9adf65cd30908ba44e34bb5f97cf0f35af5d214f4e55ae78b75b8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock generate-parameter-library launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ backward-ros fmt pluginlib rclcpp rclcpp-lifecycle realtime-tools trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Package with interfaces for handling of joint limits in controllers or in hardware. The package also implements Saturation Joint Limiter for position-velocity-acceleration set and other individual interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
