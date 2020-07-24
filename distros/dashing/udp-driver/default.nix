
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-udp-driver";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/udp_driver/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "3088da3d61a32e08496698a38c082a3f6c217f2a31db1cdc753f2cdb5601e4f5";
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
