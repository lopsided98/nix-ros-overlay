
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, backward-ros, control-msgs, fmt, joint-limits, lifecycle-msgs, pal-statistics, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sdformat-urdf, tinyxml-2, urdf }:
buildRosPackage {
  pname = "ros-lyrical-hardware-interface";
  version = "6.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/hardware_interface/6.8.0-1.tar.gz";
    name = "6.8.0-1.tar.gz";
    sha256 = "139046e15a91f5368968592a4ebf8970a66002e35c97cf9f9c539c1ac661ab3b";
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
