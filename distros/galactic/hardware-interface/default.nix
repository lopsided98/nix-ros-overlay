
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, control-msgs, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, ros2-control-test-assets, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-galactic-hardware-interface";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/hardware_interface/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "597b7524a397dd58ee4e4210e8e75ce41e1619004dd49e800f4f06955dd5c2e3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs pluginlib rclcpp-lifecycle rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 ros_control hardware interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
