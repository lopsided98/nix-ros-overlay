
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-dbc-parser, can-msgs, geometry-msgs, raptor-dbw-msgs, raptor-pdu, raptor-pdu-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-can";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_can/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "3e1b0b13b8f0e686eb4e592c4aa4f330fed428a474b874d843ca6b69aeeadad1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-dbc-parser can-msgs geometry-msgs raptor-dbw-msgs raptor-pdu raptor-pdu-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Drive-by-wire interface to the New Eagle Raptor DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
