
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-multithreaded-executor";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_multithreaded_executor/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "f08e0a05c472af50565ea2796409dc8b1710e79e2a7a9e060b7486489ea48471";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing example of how to implement a multithreaded executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
