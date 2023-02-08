
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rxcpp-vendor }:
buildRosPackage {
  pname = "ros-melodic-rxros";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rosin-project";
        repo = "rxros-release";
        rev = "release/melodic/rxros/0.1.0-1";
        sha256 = "sha256-45Fy0qhcLdjAHW6g2FoeU6YS2VtB2VyOt2wCctfFj18=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rxcpp-vendor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The RxROS package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
