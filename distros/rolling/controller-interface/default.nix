
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-interface";
  version = "3.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_interface/3.9.0-2.tar.gz";
    name = "3.9.0-2.tar.gz";
    sha256 = "8b46bd1bf2e0a6522680ea271384f9c9efcb4bee473d5505b653310cba811140";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake hardware-interface rclcpp-lifecycle sensor-msgs ];
  checkInputs = [ ament-cmake-gmock ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
