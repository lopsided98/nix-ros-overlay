
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-lifecycle, ament-lint-common, boost, ament-cmake-gtest, rclcpp, autoware-auto-helper-functions, std-msgs, ament-lint-auto, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-serial-driver";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/serial_driver/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "24baf8367a4ffe543bd3641c50254486a898a851131e5f48276652252d2c9d4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle boost rclcpp autoware-auto-helper-functions std-msgs ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rclcpp-lifecycle boost rclcpp autoware-auto-helper-functions std-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from serial ports'';
    license = with lib.licenses; [ asl20 ];
  };
}
