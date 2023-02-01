
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, bullet, catkin, cmake-modules, filters, pcl-ros, resource-retriever, roscpp, sensor-msgs, tf, tinyxml, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-self-filter";
  version = "0.1.31";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "robot_self_filter-gbp";
        rev = "release/melodic/robot_self_filter/0.1.31-0";
        sha256 = "sha256-fSOJ641jMpQY0E3vOqszw4Sp6GUk8N9otjtEjp/AwVs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ assimp bullet filters pcl-ros resource-retriever roscpp sensor-msgs tf tinyxml urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
