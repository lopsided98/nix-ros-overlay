
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, pythonPackages, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-ros-pytest";
  version = "0.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "machinekoder";
        repo = "ros_pytest-release";
        rev = "release/noetic/ros_pytest/0.2.1-1";
        sha256 = "sha256-122nS1CRNw5SrY9isa2Wst3BSJUw/Pw27dtmM/ZX/BE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.pytestcov pythonPackages.pytest rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_pytest package'';
    license = with lib.licenses; [ mit ];
  };
}
