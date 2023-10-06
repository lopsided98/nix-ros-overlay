
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, diagnostic-updater, hardware-interface, launch, launch-ros, pluginlib, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-manager";
  version = "3.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_manager/3.19.1-1.tar.gz";
    name = "3.19.1-1.tar.gz";
    sha256 = "c07a0614e32d94528b325d0173e557128d8820884113b5d3cae070f68dc3c999";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs diagnostic-updater hardware-interface launch launch-ros pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
