
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, joy-teleop, robot-localization, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-mrp2-teleop";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "milvusrobotics";
        repo = "mrp2_common-release";
        rev = "release/melodic/mrp2_teleop/1.0.1-1";
        sha256 = "sha256-145swAhbbQb9dqNWJryLDUGL1vu6wMMiDgodSIQOY2g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy joy-teleop robot-localization robot-state-publisher twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleoperation and ros controls related launch files and configurations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
