
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclc-examples";
  version = "6.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/rolling/rclc_examples/6.3.0-2.tar.gz";
    name = "6.3.0-2.tar.gz";
    sha256 = "4ad44becb2f676deee3549d2c761e7ede41604104c4c85eefe128095fb59ecf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rcl rclc rclc-lifecycle rclc-parameter std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Example of using rclc_executor";
    license = with lib.licenses; [ asl20 ];
  };
}
