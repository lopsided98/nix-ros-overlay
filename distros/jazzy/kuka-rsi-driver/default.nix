
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, kuka-control-mode-handler, kuka-drivers-core, kuka-event-broadcaster, kuka-external-control-sdk, kuka-kss-message-handler, kuka-rsi-simulator, launch-testing-ament-cmake, pluginlib, ros2lifecycle, std-msgs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-jazzy-kuka-rsi-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_rsi_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ad7433831c4ba5af219a9881059b17b58a1b204964befcbe3411056e46b85b89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ kuka-rsi-simulator launch-testing-ament-cmake ros2lifecycle ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs hardware-interface joint-state-broadcaster joint-trajectory-controller kuka-control-mode-handler kuka-drivers-core kuka-event-broadcaster kuka-external-control-sdk kuka-kss-message-handler pluginlib std-msgs tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS2 hardware interface for use with KUKA RSI";
    license = with lib.licenses; [ asl20 ];
  };
}
