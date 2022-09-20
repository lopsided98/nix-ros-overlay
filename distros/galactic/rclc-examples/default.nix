
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclc-examples";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/galactic/rclc_examples/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "1151fc300c706af40e880624a96377b301df0ea0b34c9e83bb11945e32872202";
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
