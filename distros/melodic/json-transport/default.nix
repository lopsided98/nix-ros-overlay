
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, json-msgs, pythonPackages, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-json-transport";
  version = "0.0.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "locusrobotics";
        repo = "json_transport-release";
        rev = "release/melodic/json_transport/0.0.3-0";
        sha256 = "sha256-dcwwgJv0vTieJ/+pRe0gqqu/fsE6YL9KgeYWmoqvcHs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ json-msgs pythonPackages.msgpack roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''JSON transport for ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
