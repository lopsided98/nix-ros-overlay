
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-testutils, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-psen-scan";
  version = "1.0.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "psen_scan-release";
        rev = "release/melodic/psen_scan/1.0.8-1";
        sha256 = "sha256-yV4y3RrwfI5tS/kqC94ksc+/Dqub09ZCWvJS6qXkJ1Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ code-coverage pilz-testutils roslaunch rostest rosunit ];
  propagatedBuildInputs = [ roscpp roslaunch rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The psen_scan package for Pilz laser scanner'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
