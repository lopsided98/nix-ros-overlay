
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, boost, fmt, libcap, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2-control-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-realtime-tools";
  version = "3.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/jazzy/realtime_tools/3.12.0-1.tar.gz";
    name = "3.12.0-1.tar.gz";
    sha256 = "3117400b3f8e74af28a11e6c81074e337c95d65a6e27d509e30649529fa59cc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock lifecycle-msgs rclcpp-lifecycle test-msgs ];
  propagatedBuildInputs = [ ament-cmake boost fmt libcap rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.";
    license = with lib.licenses; [ bsd3 ];
  };
}
