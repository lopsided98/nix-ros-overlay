
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, ros2-control-test-assets, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-hardware-interface";
  version = "4.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/hardware_interface/4.5.0-2.tar.gz";
    name = "4.5.0-2.tar.gz";
    sha256 = "2c5d251a2afe76fca1ed9a71ad7f1dbe6ca598d701c5fd4442731c80b52b5bc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs lifecycle-msgs pluginlib rclcpp-lifecycle rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2_control hardware interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
