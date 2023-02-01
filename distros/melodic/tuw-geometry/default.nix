
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, eigen, roscpp, rospy, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-geometry";
  version = "0.0.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tuw-robotics";
        repo = "tuw_geometry-release";
        rev = "release/melodic/tuw_geometry/0.0.3-0";
        sha256 = "sha256-1VyEdZJbBU90yTHVYzBuK41YB+MHIZ92xkui7EykPTE=";
      };

  buildType = "catkin";
  buildInputs = [ boost catkin eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cv-bridge roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_geometry package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
