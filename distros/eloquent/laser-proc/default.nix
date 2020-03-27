
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-laser-proc";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/eloquent/laser_proc/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9fae12532406053f9260690d63b7a8884c27f53406ccc85c42f6a88ed663c2c6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
