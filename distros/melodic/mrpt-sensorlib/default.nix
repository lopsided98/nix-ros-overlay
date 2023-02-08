
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, mrpt-msgs, mrpt2, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-sensorlib";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "mrpt-ros-pkg-release";
        repo = "mrpt_sensors-release";
        rev = "release/melodic/mrpt_sensorlib/0.0.2-1";
        sha256 = "sha256-qSgppjhZk98hlF7X1tscTHmd6lnIQTJkpO9MpADFCx4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime mrpt-msgs mrpt2 roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library for the base generic MRPT sensor node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
