
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, autoware-auto-helper-functions, boost, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-serial-driver";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/serial_driver/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "34e98d412595d93128717cd49398695c347f2a879873e36dcb1e76f11c383349";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-auto-helper-functions boost rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from serial ports'';
    license = with lib.licenses; [ asl20 ];
  };
}
