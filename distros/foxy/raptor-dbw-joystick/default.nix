
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, raptor-dbw-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-joystick";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_joystick/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "21b40c3fcb94b0cfb96587d36c26c87e89bb8aa04a9d665c3e216bd6d3187137";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ raptor-dbw-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Joystick controller that interfaces with raptor_dbw_can node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
