
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, raptor-dbw-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-joystick";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "NewEagleRaptor";
        repo = "raptor-dbw-ros2-release";
        rev = "release/foxy/raptor_dbw_joystick/1.2.0-1";
        sha256 = "sha256-Z4qG9YMj5kwVWPXJhFJskz/vJpZcAVN0u3Hp+mW4KOE=";
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
