
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, diagnostic-updater, hardware-interface, launch, launch-ros, pluginlib, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.22.0-1.tar.gz";
    name = "2.22.0-1.tar.gz";
    sha256 = "bd98a96252d202746467f0f15c8c5b6ff08304347e4191a057d1148635865cf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs diagnostic-updater hardware-interface launch launch-ros pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
