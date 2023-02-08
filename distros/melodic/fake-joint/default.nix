
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-joint-driver, fake-joint-launch }:
buildRosPackage {
  pname = "ros-melodic-fake-joint";
  version = "0.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "fake_joint-release";
        rev = "release/melodic/fake_joint/0.0.4-1";
        sha256 = "sha256-S28or/BtQhuco0S1rwyMIYWcqw81UcdkRb1EfmdYJAc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fake-joint-driver fake-joint-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on fake-joint related package for ros_control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
