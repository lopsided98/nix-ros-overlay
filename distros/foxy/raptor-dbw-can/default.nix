
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-dbc-parser, can-msgs, geometry-msgs, raptor-dbw-msgs, raptor-pdu, raptor-pdu-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-can";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_can/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "fca24aadcaf1b0e28fdc5862e97c01a2ab5cf29a4a6d9f179153883be35a6cd8";
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
