
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, backward-ros, control-msgs, fmt, joint-limits, lifecycle-msgs, pal-statistics, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sdformat-urdf, tinyxml-2, urdf }:
buildRosPackage {
  pname = "ros-rolling-hardware-interface";
  version = "6.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/hardware_interface/6.3.2-1.tar.gz";
    name = "6.3.2-1.tar.gz";
    sha256 = "fcf4a4325922dde8bc7929d8735cc35c9c41c6a4d422ccd18e22caf6c57caec9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs fmt joint-limits lifecycle-msgs pal-statistics pluginlib rclcpp-lifecycle rcpputils rcutils realtime-tools sdformat-urdf tinyxml-2 urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Base classes for hardware abstraction and tooling for them";
    license = with lib.licenses; [ asl20 ];
  };
}
