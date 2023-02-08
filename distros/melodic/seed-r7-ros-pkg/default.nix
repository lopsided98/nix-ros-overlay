
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, seed-r7-bringup, seed-r7-description, seed-r7-moveit-config, seed-r7-navigation, seed-r7-robot-interface, seed-r7-ros-controller, seed-r7-samples, seed-r7-typef-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-ros-pkg";
  version = "0.3.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "seed-solutions";
        repo = "seed_r7_ros_pkg-release";
        rev = "release/melodic/seed_r7_ros_pkg/0.3.3-1";
        sha256 = "sha256-5Y9beeoSDeONO4ausfYbnWQURsBO60rW4u+NwS8Ki70=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ seed-r7-bringup seed-r7-description seed-r7-moveit-config seed-r7-navigation seed-r7-robot-interface seed-r7-ros-controller seed-r7-samples seed-r7-typef-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_pkg package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
