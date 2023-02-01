
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, gtest, pkg-config, python, pythonPackages, ros-environment, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-rospack";
  version = "2.5.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rospack-release";
        rev = "release/melodic/rospack/2.5.6-1";
        sha256 = "sha256-Ij+5dpmFxgLhtUWZffhEHNmnyzHJOdCjrp4T6tYB8xI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules gtest ];
  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ boost pkg-config python pythonPackages.catkin-pkg pythonPackages.rosdep ros-environment tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
