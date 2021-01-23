
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-action-client";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_action_client/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "7036ba2d777564eaca2da3483192f5f1465cef33ad8c7f934697bbb416eeef22";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimal action client examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
