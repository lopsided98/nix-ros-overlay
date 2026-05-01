
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, curl, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ntrip-client-node";
  version = "0.7.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/lyrical/ntrip_client_node/0.7.4-3.tar.gz";
    name = "0.7.4-3.tar.gz";
    sha256 = "5337a9a39e79bac86a485c26b31556991b9165b54af79f5ee50eb84e51f710b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ curl rclcpp rclcpp-components rtcm-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Publishes RTCM ntrip messages from an external mountpoint";
    license = with lib.licenses; [ asl20 ];
  };
}
