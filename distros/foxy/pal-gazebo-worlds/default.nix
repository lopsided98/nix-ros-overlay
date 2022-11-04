
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, gazebo-msgs, gazebo-ros, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-pal-gazebo-worlds";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_worlds-ros2-release/archive/release/foxy/pal_gazebo_worlds/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "e5931f7ab146d082b390e936ab1c231039b55d648e72aec181ba8d4b7d62e4ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-ros rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simulation worlds for PAL robots.'';
    license = with lib.licenses; [ "LGPL-3.0" ];
  };
}
