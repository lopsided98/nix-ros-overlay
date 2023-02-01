
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gazebo-plugins, gazebo-ros, gazebo-ros2-control, irobot-create-common-bringup, irobot-create-description, irobot-create-gazebo-plugins, ros2launch }:
buildRosPackage {
  pname = "ros-humble-irobot-create-gazebo-bringup";
  version = "2.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "create3_sim-release";
        rev = "release/humble/irobot_create_gazebo_bringup/2.0.0-1";
        sha256 = "sha256-wxmGDvcKpQVtWtMWZWS1bFl0Y0AxI9FqzgcTW9i0s20=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control irobot-create-common-bringup irobot-create-description irobot-create-gazebo-plugins ros2launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides launch and configuration scripts for a Gazebo simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
