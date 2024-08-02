
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, console-bridge, linuxHeaders, pluginlib }:
buildRosPackage {
  pname = "ros-humble-clearpath-socketcan-interface";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/humble/clearpath_socketcan_interface/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "098c5c8f4b05701bd1579127e3a4dc887ace3f337254cae4ad6d29cd18c64454";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost console-bridge linuxHeaders pluginlib ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Clearpath's CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
