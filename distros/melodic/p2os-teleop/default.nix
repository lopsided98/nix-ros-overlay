
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-p2os-teleop";
  version = "2.1.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "allenh1";
        repo = "p2os-release";
        rev = "release/melodic/p2os_teleop/2.1.1-3";
        sha256 = "sha256-SQmR5ONWmzEvJ5jV30M3a1UKC86k1J436mAvkfXZR8k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A teleoperation node for the p2os_driver package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
