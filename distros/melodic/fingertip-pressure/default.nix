
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, pr2-msgs, rospy, rostest, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-fingertip-pressure";
  version = "1.8.19-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_ethercat_drivers-release";
        rev = "release/melodic/fingertip_pressure/1.8.19-1";
        sha256 = "sha256-LFYy3JX5gmlINj5Ymj/D6zv92UADHOPgHgLrJhUk16s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pr2-msgs rospy std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides access to the PR2 fingertip pressure sensors. This information includes:'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
