
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, robot-state-publisher, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.12-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "dingo-release";
        rev = "release/melodic/dingo_description/0.1.12-2";
        sha256 = "sha256-9auaDBhNJyrG46HbPTPiV7lxLl6NKszN1AhO7ep4UQ0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lms1xx realsense2-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
