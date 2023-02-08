
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rxros, tf }:
buildRosPackage {
  pname = "ros-melodic-rxros-tf";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rosin-project";
        repo = "rxros-release";
        rev = "release/melodic/rxros_tf/0.1.0-1";
        sha256 = "sha256-caRGb8SG4275JoHjVUPzvNuxihP4wYWupSffOT7MTs0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rxros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions to RxROS for working with TF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
