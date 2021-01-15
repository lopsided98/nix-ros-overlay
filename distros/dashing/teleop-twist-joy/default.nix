
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-teleop-twist-joy";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/dashing/teleop_twist_joy/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "ab743aae573a0901a61f031d7382b62543ec3e58d6a4e0d037f857797d3d7fb9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
