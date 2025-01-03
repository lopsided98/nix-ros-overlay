
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclc-examples";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/rolling/rclc_examples/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "b0a9383a30ff52c66183fa623b38ef6b9915c8386c3f5897666f2220702eac8a";
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
