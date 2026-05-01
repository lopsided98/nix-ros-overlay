
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rclc-examples";
  version = "6.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/lyrical/rclc_examples/6.3.0-3.tar.gz";
    name = "6.3.0-3.tar.gz";
    sha256 = "8079e8934db7999a21de43654bf867eb5e6857ebe293d2cb27c533138b6de4c9";
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
