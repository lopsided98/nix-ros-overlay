
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp, ament-cmake, geometry-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-teleop-twist-joy";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/dashing/teleop_twist_joy/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "518d5bae18c69765523dbe827ae3781b3e315b4681c6eeff0d9908c07101c688";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
