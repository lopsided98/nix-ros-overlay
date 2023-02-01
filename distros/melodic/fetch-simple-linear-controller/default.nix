
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fetch-simple-linear-controller";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gt-rail-release";
        repo = "fetch_simple_linear_controller-release";
        rev = "release/melodic/fetch_simple_linear_controller/0.0.1-1";
        sha256 = "sha256-pn4eYMlb61cSiMjJcIx36n2LIpVlFHi7ICxlvTobepE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib control-msgs geometry-msgs message-runtime roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Position feedback controller for simple linear motion of the fetch robot's end-effector.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
