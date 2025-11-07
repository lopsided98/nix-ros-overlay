
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, backward-ros, control-msgs, fmt, joint-limits, lifecycle-msgs, pal-statistics, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sdformat-urdf, tinyxml2-vendor, urdf }:
buildRosPackage {
  pname = "ros-kilted-hardware-interface";
  version = "5.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/hardware_interface/5.8.1-1.tar.gz";
    name = "5.8.1-1.tar.gz";
    sha256 = "734963563141f61560cb312faaeb154b7cd38d03e4ec8f888873bcc42774469b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs fmt joint-limits lifecycle-msgs pal-statistics pluginlib rclcpp-lifecycle rcpputils rcutils realtime-tools sdformat-urdf tinyxml2-vendor urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Base classes for hardware abstraction and tooling for them";
    license = with lib.licenses; [ asl20 ];
  };
}
