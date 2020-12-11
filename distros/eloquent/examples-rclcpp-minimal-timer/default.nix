
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-timer";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_timer/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "08895e469488a66df13c9bdebe859e7f310f9a3e00c66ec75c9721826d81eb5b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal nodes which have timers'';
    license = with lib.licenses; [ asl20 ];
  };
}
