
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-mrp2-slam";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "milvusrobotics";
        repo = "mrp2_common-release";
        rev = "release/melodic/mrp2_slam/1.0.1-1";
        sha256 = "sha256-ElV4KS4ZJILHeT7GK+8nNLvYqe//5r6ZmYv6ErGh+e4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin tf ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch scripts for mapping operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
