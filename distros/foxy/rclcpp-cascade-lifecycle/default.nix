
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-rclcpp-cascade-lifecycle";
  version = "0.0.7-r4";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/foxy/rclcpp_cascade_lifecycle/0.0.7-4.tar.gz";
    name = "0.0.7-4.tar.gz";
    sha256 = "92bfb8ad368e90dc726a9d815ccaedb91814809efad10f9b70d134733af36cb1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a mechanism to make trees of lifecycle nodes to propagate state changes'';
    license = with lib.licenses; [ asl20 ];
  };
}
