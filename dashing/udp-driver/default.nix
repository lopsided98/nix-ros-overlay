
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-lifecycle, ament-lint-common, boost, ament-cmake-gtest, rclcpp, std-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-udp-driver";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/dashing/udp_driver/0.0.3-1.tar.gz;
    sha256 = "920119abfe5338991a477d3b28d8751044506aa577c5914ffb38882cbb68521f";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp-lifecycle rclcpp boost ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rclcpp-lifecycle rclcpp boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from UDP sockets'';
    license = with lib.licenses; [ asl20 ];
  };
}
