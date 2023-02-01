
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.6.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_common-release";
        rev = "release/melodic/pilz_industrial_motion_testutils/0.6.0-1";
        sha256 = "sha256-6EvswiecJFtXLpqcZBH0MOuozgz7gSCT8xNZUqDbC1w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs pilz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
