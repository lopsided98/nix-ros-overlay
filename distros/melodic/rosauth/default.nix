
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, openssl, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-rosauth";
  version = "1.0.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gt-rail-release";
        repo = "rosauth-release";
        rev = "release/melodic/rosauth/1.0.1-0";
        sha256 = "sha256-k6rlgHzOtIixFOZAXYcjZimrp6cFUKE1p7MCPhzpIME=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation openssl ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Server Side tools for Authorization and Authentication of ROS Clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
