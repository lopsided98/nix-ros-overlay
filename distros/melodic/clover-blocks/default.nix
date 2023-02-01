
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-clover-blocks";
  version = "0.21.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CopterExpress";
        repo = "clover-release";
        rev = "release/melodic/clover_blocks/0.21.2-1";
        sha256 = "sha256-rPEyRO2L63MwHbWadw8T6iEM8Gc0SDpiV+ac79H+iGU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Blockly programming support for Clover'';
    license = with lib.licenses; [ mit ];
  };
}
