
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-examples-rclcpp-cbg-executor";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/galactic/examples_rclcpp_cbg_executor/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "0ac648222c66da3c60039504237483e97b8f2186b092575c82df7c6a45f73543";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example for multiple Executor instances in one process, using the callback-group-level interface of the Executor class.'';
    license = with lib.licenses; [ asl20 ];
  };
}
