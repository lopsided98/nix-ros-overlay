
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, ament-index-cpp, controller-interface, controller-manager-msgs, hardware-interface, launch, launch-ros, pluginlib, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "26270b6b3311b9cb4798c45fced33eb7c8691fa84f876d6e84fde4128c9a7b91";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock realtime-tools ];
  propagatedBuildInputs = [ ament-index-cpp controller-interface controller-manager-msgs hardware-interface launch launch-ros pluginlib rclcpp rcpputils ros2-control-test-assets ros2param ros2run ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
