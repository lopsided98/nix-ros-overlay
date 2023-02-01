
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libreflexxestype2, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ros-reflexxes";
  version = "0.8.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "KITrobotics";
        repo = "ipr_extern-release";
        rev = "release/melodic/ros_reflexxes/0.8.8-1";
        sha256 = "sha256-wYms2OhjSbdBrHQwTe3qis9h2Hhuyrj+qZCBKnDO5j0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ libreflexxestype2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_reflexxes package'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
