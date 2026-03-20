
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, curl, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ntrip-client-node";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/ntrip_client_node/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "fece7ee626919ff48b4e972a23c1e7c0e2dd629af0f04c1f5353898e1eb742de";
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
