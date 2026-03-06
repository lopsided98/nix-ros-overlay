
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rclc-examples";
  version = "6.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/kilted/rclc_examples/6.2.3-1.tar.gz";
    name = "6.2.3-1.tar.gz";
    sha256 = "a23c3524c46ccb52cd4f441066c2d5bc7632e49d50d37b52f251573f79d0aab1";
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
