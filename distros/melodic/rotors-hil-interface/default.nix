
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, mav-msgs, mavros, mavros-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rotors-hil-interface";
  version = "2.2.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-asl";
        repo = "rotors_simulator-release";
        rev = "release/melodic/rotors_hil_interface/2.2.3-0";
        sha256 = "sha256-dEYclVn4DtkWi48EcsQl2Kdm5NswREjN/Qm6JhJdxw8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ geometry-msgs mav-msgs mavros mavros-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RotorS Hardware-in-the-loop interface package'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
