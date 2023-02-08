
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pal-statistics-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-pal-carbon-collector";
  version = "1.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "pal_statistics-release";
        rev = "release/melodic/pal_carbon_collector/1.4.1-1";
        sha256 = "sha256-pSfPvr68E2VfYheK81CfVDUvxmBPn0Z6QAcYUa/BVMY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pal-statistics-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node that collects statistics from topics and sends them to carbon'';
    license = with lib.licenses; [ mit ];
  };
}
