
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-teleop";
  version = "1.0.0-r5";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator_p-release";
        rev = "release/melodic/open_manipulator_p_teleop/1.0.0-5";
        sha256 = "sha256-Lry5lx+fn8uTB0rJb+oUPPmVA9OoGpVud83lANA2HkI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P teleoperation'';
    license = with lib.licenses; [ asl20 ];
  };
}
