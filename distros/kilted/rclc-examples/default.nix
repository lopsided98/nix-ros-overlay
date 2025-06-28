
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rclc-examples";
  version = "6.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/kilted/rclc_examples/6.2.0-2.tar.gz";
    name = "6.2.0-2.tar.gz";
    sha256 = "4191599b19aab4391a714c1f64eaed611c41b11c83d9d5c372a0fea2fe6db32d";
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
