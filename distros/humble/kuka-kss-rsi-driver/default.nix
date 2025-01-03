
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, kuka-drivers-core, kuka-robot-descriptions, kuka-rsi-simulator, launch-testing-ament-cmake, pluginlib, ros2-control, ros2lifecycle, std-msgs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-humble-kuka-kss-rsi-driver";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_kss_rsi_driver/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "4dd875329ca8e7c3ff5694549d9a8dc50cb65e5c5f77801410230f8df7df09b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ kuka-rsi-simulator launch-testing-ament-cmake ros2lifecycle ];
  propagatedBuildInputs = [ controller-manager-msgs hardware-interface joint-state-broadcaster joint-trajectory-controller kuka-drivers-core kuka-robot-descriptions pluginlib ros2-control std-msgs tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS2 hardware interface for use with KUKA RSI";
    license = with lib.licenses; [ asl20 ];
  };
}
