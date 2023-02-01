
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, gazebo-ros-control, roscpp, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-open-manipulator-p-gazebo";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator_p_simulations-release";
        rev = "release/noetic/open_manipulator_p_gazebo/1.0.1-1";
        sha256 = "sha256-blrO2czuv7I36iBCDdn4KHn0PFykPczic1aNxdP+dIg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo-ros gazebo-ros-control roscpp std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
