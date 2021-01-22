
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, hardware-interface, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-dashing-controller-interface";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/dashing/controller_interface/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "6d306d244e7507a456811ba1a0fc86af5237401252c0ec9dfad1f84ae9d45df0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
