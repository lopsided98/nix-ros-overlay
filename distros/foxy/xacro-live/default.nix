
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, joint-state-publisher-gui, launch, launch-ros, launch-testing, python3Packages, pythonPackages, rcl-interfaces, rclpy, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-foxy-xacro-live";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "orise-robotics";
        repo = "xacro_live-release";
        rev = "release/foxy/xacro_live/0.1.1-1";
        sha256 = "sha256-Xya3CJV7MhAmejc/1ccN3xlagZhoSO6VGY2QIy3juDg=";
      };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros python3Packages.watchdog rcl-interfaces rclpy robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tool to update the robot_description dinamically from updates on a target xacro file'';
    license = with lib.licenses; [ asl20 ];
  };
}
