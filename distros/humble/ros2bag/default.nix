
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, ros2cli, rosbag2-py, rosbag2-transport }:
buildRosPackage {
  pname = "ros-humble-ros2bag";
  version = "0.15.4-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rosbag2-release";
        rev = "release/humble/ros2bag/0.15.4-2";
        sha256 = "sha256-E8hIKm/Gz7Q4dJy+sRlvQSHL52aiUAYzhxfNyz6XwaE=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli rosbag2-py rosbag2-transport ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
