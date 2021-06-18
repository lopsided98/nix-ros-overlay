
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, raptor-dbw-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-joystick";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_joystick/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a5d2193047328e26789260f7a2e2c5ab91d44f7cb9a22f7397eccb5578d1c45a";
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
