
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-dbc-parser, can-msgs, geometry-msgs, raptor-dbw-msgs, raptor-pdu, raptor-pdu-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-can";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_can/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "14aa0ceed1d5cbc1d4a6fe871459af434a00f8508c2b4fcba88ebbdca7b32b18";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-dbc-parser can-msgs geometry-msgs raptor-dbw-msgs raptor-pdu raptor-pdu-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Drive-by-wire interface to the New Eagle Raptor DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
