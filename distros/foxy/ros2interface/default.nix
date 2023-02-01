
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, pythonPackages, ros-testing, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros2interface";
  version = "0.9.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ros2cli-release";
        rev = "release/foxy/ros2interface/0.9.12-1";
        sha256 = "sha256-z/zupH6RkvuG7J25FtD7HfNbrNwmi2HC7TowsB0qymE=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The interface command for ROS 2 command line tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
