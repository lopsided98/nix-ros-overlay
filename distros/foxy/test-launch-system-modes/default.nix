
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-flake8, ament-cmake-pep257, ament-index-python, ament-lint-auto, builtin-interfaces, launch-system-modes, launch-testing-ament-cmake, launch-testing-ros, lifecycle-msgs, rclcpp, rclcpp-lifecycle, system-modes, system-modes-examples, system-modes-msgs }:
buildRosPackage {
  pname = "ros-foxy-test-launch-system-modes";
  version = "0.9.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "microROS";
        repo = "system_modes-release";
        rev = "release/foxy/test_launch_system_modes/0.9.0-1";
        sha256 = "sha256-w5Fha94UpnDbj9nKGdwQoj7EwmqvKGhxG9qhUVNIJiA=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-flake8 ament-cmake-pep257 ament-index-python ament-lint-auto launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ builtin-interfaces launch-system-modes lifecycle-msgs rclcpp rclcpp-lifecycle system-modes system-modes-examples system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch tests for the launch_system_modes package, i.e. launch actions, events, and event
    handlers for system modes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
