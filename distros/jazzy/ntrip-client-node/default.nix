
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, libcurl-vendor, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ntrip-client-node";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/jazzy/ntrip_client_node/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "f4442b97e6d7bb16f42721f7a250967df930c11a50ec350236291db3dbe69db5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libcurl-vendor rclcpp rclcpp-components rtcm-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Publishes RTCM ntrip messages from an external mountpoint";
    license = with lib.licenses; [ asl20 ];
  };
}
