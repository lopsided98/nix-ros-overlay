
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, gazebo-ros2-control, ign-ros2-control, joint-state-publisher-gui, launch, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-description";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "crane_plus-release";
        rev = "release/foxy/crane_plus_description/1.1.0-1";
        sha256 = "sha256-VJNjb6UaRvMh4k2/l4GfvniaugUN7sJv8j9lQzmGang=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros2-control ign-ros2-control joint-state-publisher-gui launch robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''CRANE+ V2 description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
