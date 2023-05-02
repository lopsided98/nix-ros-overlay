
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclc-examples";
  version = "3.0.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/rolling/rclc_examples/3.0.9-2.tar.gz";
    name = "3.0.9-2.tar.gz";
    sha256 = "99a67052a7ebcc62dd76db04d35f61989dcc5c5b4b269ce808bed5282fda22db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rcl rclc rclc-lifecycle rclc-parameter std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
