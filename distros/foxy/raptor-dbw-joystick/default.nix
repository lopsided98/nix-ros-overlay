
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, raptor-dbw-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-joystick";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_joystick/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "179ff82e7809594d36a532b0bccdf072c904ed7a18c66fe58a39d82e90f528cf";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ raptor-dbw-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Joystick controller that interfaces with raptor_dbw_can node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
