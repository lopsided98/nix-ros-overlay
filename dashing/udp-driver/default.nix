
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, rclcpp-lifecycle, std-msgs, ament-lint-common, ament-cmake, ament-cmake-gtest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-udp-driver";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/udp_driver/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "920119abfe5338991a477d3b28d8751044506aa577c5914ffb38882cbb68521f";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs boost rclcpp rclcpp-lifecycle ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs boost rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from UDP sockets'';
    license = with lib.licenses; [ asl20 ];
  };
}
