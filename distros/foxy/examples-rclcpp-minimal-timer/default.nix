
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-examples-rclcpp-minimal-timer";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclcpp_minimal_timer/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "b60787e3aa6033099bd8ebf49cfb91e5f50bffcc78b0d69f4053aa6cf492cfe9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal nodes which have timers'';
    license = with lib.licenses; [ asl20 ];
  };
}
