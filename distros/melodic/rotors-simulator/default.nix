
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rotors-comm, rotors-control, rotors-description, rotors-evaluation, rotors-gazebo, rotors-gazebo-plugins, rotors-hil-interface, rotors-joy-interface, rqt-rotors }:
buildRosPackage {
  pname = "ros-melodic-rotors-simulator";
  version = "2.2.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-asl";
        repo = "rotors_simulator-release";
        rev = "release/melodic/rotors_simulator/2.2.3-0";
        sha256 = "sha256-LQlkPY1xqe6OJe1mXJP44CoLrVGoBdhQvz6oytMy0kg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rotors-comm rotors-control rotors-description rotors-evaluation rotors-gazebo rotors-gazebo-plugins rotors-hil-interface rotors-joy-interface rqt-rotors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RotorS is a MAV gazebo simulator.'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
