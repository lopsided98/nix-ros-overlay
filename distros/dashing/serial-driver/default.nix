
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-serial-driver";
  version = "0.0.6-r4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/serial_driver/0.0.6-4.tar.gz";
    name = "0.0.6-4.tar.gz";
    sha256 = "f07c5fbd76a5da7d4fb36f3d6b834f3430a4cbfa2d9219faceb2be5c29931c8e";
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
