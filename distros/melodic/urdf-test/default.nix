
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, xacro }:
buildRosPackage {
  pname = "ros-melodic-urdf-test";
  version = "1.0.4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "urdf_test-release";
        rev = "release/melodic/urdf_test/1.0.4-0";
        sha256 = "sha256-ylxLRwWS+kAio+elyt4ZAqXS4pZ3oUsl5rp5+h7pns8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_test package'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
