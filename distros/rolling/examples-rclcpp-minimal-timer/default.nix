
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-timer";
  version = "0.19.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_timer/0.19.1-2.tar.gz";
    name = "0.19.1-2.tar.gz";
    sha256 = "b25aaf05a1b355c9131555b3d65ff0cdf1468b30e4df74b2c88687af9f69c021";
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
