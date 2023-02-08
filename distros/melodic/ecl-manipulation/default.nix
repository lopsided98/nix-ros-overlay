
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-manipulators }:
buildRosPackage {
  pname = "ros-melodic-ecl-manipulation";
  version = "0.60.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "ecl_manipulation-release";
        rev = "release/melodic/ecl_manipulation/0.60.3-0";
        sha256 = "sha256-DvFDtsDIZr4PgYky1JwGW3fA0twW1Nq817/WHWify0w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-manipulators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes basic manipulation related structures as well as a few 
    algorithms currently used at Yujin Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
