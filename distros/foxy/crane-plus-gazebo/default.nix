
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, crane-plus-description, crane-plus-moveit-config, gazebo-ros-pkgs }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-gazebo";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "crane_plus-release";
        rev = "release/foxy/crane_plus_gazebo/1.1.0-1";
        sha256 = "sha256-6M8mT62aU283gI+45sI0aVnEcagPSn5v2KHU1wfHtsY=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crane-plus-description crane-plus-moveit-config gazebo-ros-pkgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
