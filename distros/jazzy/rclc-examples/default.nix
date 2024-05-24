
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclc-examples";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/jazzy/rclc_examples/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "c5d39cc8c698c3ee2abe761c5ecdf025fb5ec67486a479213485396d5e272d26";
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
