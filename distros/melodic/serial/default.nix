
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-serial";
  version = "1.2.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wjwwood";
        repo = "serial-release";
        rev = "release/melodic/serial/1.2.1-0";
        sha256 = "sha256-/FAxK2r1ZPZM1fLmXmpgiYBEX+n8be3bqKfNxHtXmEE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Serial is a cross-platform, simple to use library for using serial ports on computers.  This library provides a C++, object oriented interface for interacting with RS-232 like devices on Linux and Windows.'';
    license = with lib.licenses; [ mit ];
  };
}
