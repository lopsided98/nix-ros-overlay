
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-brics-actuator";
  version = "0.7.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wnowak";
        repo = "brics_actuator-release";
        rev = "release/melodic/brics_actuator/0.7.0-0";
        sha256 = "sha256-ubbpm+3hE8o/b9m5SnvJ5Ut5KOLmSoPgqWa/mrhnqfg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message defined in the BRICS project'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
