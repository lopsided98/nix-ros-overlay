
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-noetic-hebi-cpp-api";
  version = "3.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "HebiRobotics";
        repo = "hebi_cpp_api_ros-release";
        rev = "release/noetic/hebi_cpp_api/3.2.0-1";
        sha256 = "sha256-QSAEabtAQlkrQTpDECGciMGUtGZzgFgFzK5D+IHf/O8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI-C-Software-License-https-www.hebirobotics.com-softwarelicense-" ];
  };
}
