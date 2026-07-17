
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_chafa, ament-cmake, ament-cmake-python, python3, rclcpp, ros2cli, ros2node, ros2service, ros2topic, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-helper";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/codevilot/ros2-helper-release/archive/release/jazzy/ros2_helper/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "bc69302f8f5e66df986991614fcf7bf9f112376db432745a8829c0f2cfe6955f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ _unresolved_chafa python3 rclcpp ros2cli ros2node ros2service ros2topic sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Terminal-first helper tools for ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
