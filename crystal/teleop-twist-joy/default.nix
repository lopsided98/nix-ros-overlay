
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp, ament-cmake, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-teleop-twist-joy";
  version = "2.1.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/teleop_twist_joy-release/archive/release/crystal/teleop_twist_joy/2.1.1-0.tar.gz;
    sha256 = "a7d77f7bc4efb63a825c9f06c88703e9373dafe9a615473f6a1a7c4866fea635";
  };

  buildInputs = [ sensor-msgs rclcpp geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
