
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, console-bridge, linuxHeaders, pluginlib }:
buildRosPackage {
  pname = "ros-humble-clearpath-socketcan-interface";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/humble/clearpath_socketcan_interface/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "094db2f3686f4067b728fac267636bc4e9ce90c6a34f13031f609e8f11461ab7";
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
