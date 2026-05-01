
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros2-socketcan";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/lyrical/ros2_socketcan/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "660b8363de24d61a1cbb9db1f204e64259479a4f0cd08fc192f32a0149c83023";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle ros2-socketcan-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Simple wrapper around SocketCAN";
    license = with lib.licenses; [ asl20 ];
  };
}
