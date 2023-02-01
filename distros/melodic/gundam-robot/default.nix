
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gundam-rx78-control, gundam-rx78-description, gundam-rx78-gazebo }:
buildRosPackage {
  pname = "ros-melodic-gundam-robot";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gundam-global-challenge";
        repo = "gundam_robot-release";
        rev = "release/melodic/gundam_robot/0.0.3-1";
        sha256 = "sha256-agYnxYX+BnWxZ4PdMDncV0JV/p+EOBkq+oJZkXbnTLY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gundam-rx78-control gundam-rx78-description gundam-rx78-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_robot is a meta package for GUNDAM RX-78 robot controller and simulator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
