
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-melodic-ecl-config";
  version = "0.61.6";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "ecl_lite-release";
        rev = "release/melodic/ecl_config/0.61.6-0";
        sha256 = "sha256-0sot7I/1wIJE2Wd8WYEO3uM9LqX1znaq7dIaEKD91kk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types 
     and functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
