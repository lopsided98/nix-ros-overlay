
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-dbc-parser, can-msgs, geometry-msgs, raptor-dbw-msgs, raptor-pdu, raptor-pdu-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-can";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "NewEagleRaptor";
        repo = "raptor-dbw-ros2-release";
        rev = "release/foxy/raptor_dbw_can/1.2.0-1";
        sha256 = "sha256-yaDG2EstOPr8Pa3NBQ2ZPN+67Fujj3kXaW9hkD4GoDA=";
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
