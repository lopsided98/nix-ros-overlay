
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, backward-ros, fmt, generate-parameter-library, launch-ros, launch-testing-ament-cmake, lifecycle-msgs, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-kilted-joint-limits";
  version = "5.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/joint_limits/5.20.0-1.tar.gz";
    name = "5.20.0-1.tar.gz";
    sha256 = "b42ae370f1e6d0e8ec004f8e5e807c5e5d12c356ac9cec2f88d17dee1c9b30fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock generate-parameter-library launch-ros launch-testing-ament-cmake lifecycle-msgs ];
  propagatedBuildInputs = [ backward-ros fmt pluginlib rcl-interfaces rclcpp rclcpp-lifecycle realtime-tools trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Package with interfaces for handling of joint limits in controllers or in hardware. The package also implements Saturation Joint Limiter for position-velocity-acceleration set and other individual interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
