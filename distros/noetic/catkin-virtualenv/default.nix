
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3, python3Packages, pythonPackages, rosbash, roslint }:
buildRosPackage {
  pname = "ros-noetic-catkin-virtualenv";
  version = "0.6.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "catkin_virtualenv-release";
        rev = "release/noetic/catkin_virtualenv/0.6.1-2";
        sha256 = "sha256-nu9aKuMCPIrm23vZshhs2WHT41X7QgkgqHgwsxxpXvk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ python3 python3Packages.nose python3Packages.rospkg python3Packages.virtualenv pythonPackages.python rosbash ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bundle python requirements in a catkin package via virtualenv.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
