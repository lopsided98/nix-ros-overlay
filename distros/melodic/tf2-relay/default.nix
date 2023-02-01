
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-relay, roscpp, roslaunch, roslint, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-relay";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "cpr_multimaster_tools-release";
        rev = "release/melodic/tf2_relay/0.0.2-1";
        sha256 = "sha256-2dW7qeIgKV94Evu95Q6kQYTI+4UxzA7v+Y8PdvjPggA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ message-relay roscpp tf tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Specialization of message_relay for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
