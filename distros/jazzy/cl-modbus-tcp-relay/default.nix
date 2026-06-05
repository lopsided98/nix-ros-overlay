
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libmodbus, pkg-config, rclcpp, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-cl-modbus-tcp-relay";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_modbus_tcp_relay/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "b41dee8abe62af9bf2dc2897217809f674ef951e90889c4195814998d65c1db4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ libmodbus rclcpp smacc2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "SMACC2 client for Modbus TCP relay control (8-channel Waveshare POE ETH Relay)";
    license = with lib.licenses; [ asl20 ];
  };
}
