
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, backward-ros, control-msgs, joint-limits, lifecycle-msgs, pal-statistics, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, realtime-tools, ros2-control-test-assets, sdformat-urdf, tinyxml2-vendor, urdf }:
buildRosPackage {
  pname = "ros-jazzy-hardware-interface";
  version = "4.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/hardware_interface/4.27.0-1.tar.gz";
    name = "4.27.0-1.tar.gz";
    sha256 = "ff0e0ebcb5232645948b8a1bb95782630fd300443af5254afa47ee60d9e76b66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs joint-limits lifecycle-msgs pal-statistics pluginlib rclcpp-lifecycle rcpputils rcutils realtime-tools sdformat-urdf tinyxml2-vendor urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "ros2_control hardware interface";
    license = with lib.licenses; [ asl20 ];
  };
}
