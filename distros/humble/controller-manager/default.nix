
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, ament-index-cpp, controller-interface, controller-manager-msgs, hardware-interface, launch, launch-ros, pluginlib, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "ebfd7a4854fc44744b6e229bd02f09c21ef21878b881121d911f931c55fb5eba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock realtime-tools ];
  propagatedBuildInputs = [ ament-index-cpp controller-interface controller-manager-msgs hardware-interface launch launch-ros pluginlib rclcpp rcpputils ros2-control-test-assets ros2param ros2run ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
