
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, pluginlib, roscpp, rsm-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-rsm-core";
  version = "1.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MarcoStb1993";
        repo = "robot_statemachine-release";
        rev = "release/melodic/rsm_core/1.2.1-1";
        sha256 = "sha256-niMSSJ/zblpPu0w0yEVRMbHIbCV9Vutwd1mzCTiLjso=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs pluginlib roscpp rsm-msgs sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The statemachine package includes the Robot Statemachine's
		main functionality'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
