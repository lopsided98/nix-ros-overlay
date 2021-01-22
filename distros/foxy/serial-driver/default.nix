
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-serial-driver";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/foxy/serial_driver/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "7382b9b80f5e21777704bcf10891f2d356a6d6f63270ca866e02da8ed4d8ec5d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from serial ports'';
    license = with lib.licenses; [ asl20 ];
  };
}
