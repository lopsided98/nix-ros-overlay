
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, geometry-msgs, joint-state-controller, joint-trajectory-controller, nav-msgs, position-controllers, roscpp, rospy, std-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-omnibase-control";
  version = "1.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ERC-BPGC";
        repo = "omnibase-release";
        rev = "release/melodic/omnibase_control/1.0.2-2";
        sha256 = "sha256-yBcBcGiPBWHFC8+K/Ge5cB+qP0SXbweIB/cxFkQgvRk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ effort-controllers geometry-msgs joint-state-controller joint-trajectory-controller nav-msgs position-controllers roscpp rospy std-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The omnibase_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
