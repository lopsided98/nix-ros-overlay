
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, p2os-driver, p2os-msgs, p2os-teleop, p2os-urdf }:
buildRosPackage {
  pname = "ros-melodic-p2os-launch";
  version = "2.1.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "allenh1";
        repo = "p2os-release";
        rev = "release/melodic/p2os_launch/2.1.1-3";
        sha256 = "sha256-R6ssabNcPIWBWo3mf5pnneQivmi/Uoo+mO7tgOhK9/s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ p2os-driver p2os-msgs p2os-teleop p2os-urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and config files designed for use with the p2os stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
