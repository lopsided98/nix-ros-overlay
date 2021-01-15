
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-udp-driver";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/foxy/udp_driver/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "3977d82fe54e1bfe2ec2008f3325b8cbe8f2fc3b579507e6083b3756f55e4a6d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from UDP sockets'';
    license = with lib.licenses; [ asl20 ];
  };
}
