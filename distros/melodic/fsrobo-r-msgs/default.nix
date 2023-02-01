
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-msgs";
  version = "0.7.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "FUJISOFT-Robotics";
        repo = "fsrobo_r-release";
        rev = "release/melodic/fsrobo_r_msgs/0.7.1-1";
        sha256 = "sha256-bHM9+6gUFeJuoZsCVhOGxRhfuwZz7Hn0PG7sfdLCkY8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
