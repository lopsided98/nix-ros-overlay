
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, hardware-interface, hardware-interface-testing, launch, launch-ros, pluginlib, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.40.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.40.0-1.tar.gz";
    name = "2.40.0-1.tar.gz";
    sha256 = "2d282c3e14d98cd7e5d1cfe06dcb3ba38736fd8eb62501226ca23d522425ea0e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs hardware-interface launch launch-ros pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
