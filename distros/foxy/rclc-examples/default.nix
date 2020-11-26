
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc-examples";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/foxy/rclc_examples/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "cde6d90fe96ac18948a7d849677780c10f078f5bf4e230452e580d74b88eead3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
