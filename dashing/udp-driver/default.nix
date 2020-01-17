
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-udp-driver";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/udp_driver/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "150a7a7a507281fe163b5a2b4fa01bb1fc3da7719b75fabbf1036d78e3b9e76b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from UDP sockets'';
    license = with lib.licenses; [ asl20 ];
  };
}
