
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, ros2-control-test-assets, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-iron-hardware-interface";
  version = "3.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/hardware_interface/3.30.0-1.tar.gz";
    name = "3.30.0-1.tar.gz";
    sha256 = "1ae7aa2c217a52bb98fe4fe45ae344980fe0d068464581efa0bc9f51d62bf49a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs lifecycle-msgs pluginlib rclcpp-lifecycle rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface";
    license = with lib.licenses; [ asl20 ];
  };
}
