
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-serial-driver";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/serial_driver/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "dc08840cd29cc804a545fbe4e407ab0a6c89c041b22e8290d637a7758e84ae8f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from serial ports'';
    license = with lib.licenses; [ asl20 ];
  };
}
