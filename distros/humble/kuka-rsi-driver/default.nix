
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager-msgs, gpio-controllers, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, kuka-control-mode-handler, kuka-drivers-core, kuka-event-broadcaster, kuka-external-control-sdk, kuka-kss-message-handler, kuka-robot-descriptions, kuka-rsi-simulator, launch-testing-ament-cmake, pluginlib, ros2-control, ros2lifecycle, std-msgs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-humble-kuka-rsi-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_rsi_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "73b683b003e6c313b3ebab02a7bf88de5ff26695e9a92a439491498177401ace";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ kuka-rsi-simulator launch-testing-ament-cmake ros2lifecycle ];
  propagatedBuildInputs = [ controller-manager-msgs gpio-controllers hardware-interface joint-state-broadcaster joint-trajectory-controller kuka-control-mode-handler kuka-drivers-core kuka-event-broadcaster kuka-external-control-sdk kuka-kss-message-handler kuka-robot-descriptions pluginlib ros2-control std-msgs tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS2 hardware interface for use with KUKA RSI";
    license = with lib.licenses; [ asl20 ];
  };
}
