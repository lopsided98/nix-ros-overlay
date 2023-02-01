
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, gazebo-msgs, geometry-msgs, joint-state-controller, joint-trajectory-controller, position-controllers, roscpp, sensor-msgs, std-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-omnibase-gazebo";
  version = "1.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ERC-BPGC";
        repo = "omnibase-release";
        rev = "release/melodic/omnibase_gazebo/1.0.2-2";
        sha256 = "sha256-5Jq22C9ciOs5fIQsd4U/Mxmxvn3gkQh6/+7ya9k9jxE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ effort-controllers gazebo-msgs geometry-msgs joint-state-controller joint-trajectory-controller position-controllers roscpp sensor-msgs std-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The omnibase_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
