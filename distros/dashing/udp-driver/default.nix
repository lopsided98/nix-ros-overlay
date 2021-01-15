
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-udp-driver";
  version = "0.0.6-r4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/udp_driver/0.0.6-4.tar.gz";
    name = "0.0.6-4.tar.gz";
    sha256 = "3b6988b331a4e2ba16de64c146976ae8516bc69b9e5967c79bbb6df9875826fd";
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
