
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-library";
  version = "1.0.1-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fzi-forschungszentrum-informatik";
        repo = "schunk_svh_library-release";
        rev = "release/noetic/schunk_svh_library/1.0.1-4";
        sha256 = "sha256-n1ECtIIlm0bPzlzsul/AH8CHSn5tXYbNJqbiCC9AuSs=";
      };

  buildType = "cmake";
  buildInputs = [ boost cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing the Schunk five finger hand.'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
