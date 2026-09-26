
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, tobas-linux, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-sbus-driver";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_sbus_driver/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "3087f06cc7318b132e3273840da2bbb3c72e73cb930d27f30fb71eff6e2eb0fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost tobas-linux tobas-msgs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SBUS protocol driver library and ROS 2 receiver node.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
