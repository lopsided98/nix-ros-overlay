
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, dynamic-reconfigure, message-generation, message-runtime, std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-py-trees-msgs";
  version = "0.3.6";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stonier";
        repo = "py_trees_msgs-release";
        rev = "release/melodic/py_trees_msgs/0.3.6-0";
        sha256 = "sha256-OQse0n46c5OXEjmgApcrXX4aIkZLGP/kKjEUpiL1BQk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs dynamic-reconfigure message-runtime std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by py_trees_ros and some extras for the mock demos/tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
