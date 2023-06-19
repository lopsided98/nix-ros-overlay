
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, libcurl-vendor, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ntrip-client-node";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/iron/ntrip_client_node/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "f27656b3df582a126d5b5e81a66e34024b5e43edcfce3d4772a743c2b0486409";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libcurl-vendor rclcpp rclcpp-components rtcm-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Publishes RTCM ntrip messages from an external mountpoint'';
    license = with lib.licenses; [ asl20 ];
  };
}
