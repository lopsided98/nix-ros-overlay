
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-json-msgs";
  version = "0.0.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "json_transport-release";
        rev = "release/melodic/json_msgs/0.0.3-0";
        sha256 = "sha256-zOGVlXbUqmInpvvXZOttxLfAvzL3zRdjWD+Rqh5rmjI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''JSON ROS message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
