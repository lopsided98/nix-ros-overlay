
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, subversion }:
buildRosPackage {
  pname = "ros-melodic-qpoases-vendor";
  version = "3.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "autoware-ai";
        repo = "qpoases_vendor-release";
        rev = "release/melodic/qpoases_vendor/3.2.1-1";
        sha256 = "sha256-5vC2LEfIy6E56ZDbtAG93p6nsA+Wcus1SGR7dI5fhI8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ subversion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around qpOASES to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 "LGPL" ];
  };
}
