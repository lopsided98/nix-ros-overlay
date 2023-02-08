
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-toolbox";
  version = "2.2.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "dynamixel-workbench-release";
        rev = "release/melodic/dynamixel_workbench_toolbox/2.2.0-0";
        sha256 = "sha256-7vvHlRalfjzOdTs1/wh+wepth5OJywzh1kj3CRLe2Hw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamixel-sdk roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is composed of 'dynamixel_item', 'dynamixel_tool', 'dynamixel_driver' and 'dynamixel_workbench' class.
    The 'dynamixel_item' is saved as control table item and information of Dynamixels.
    The 'dynamixel_tool' class loads its by model number of Dynamixels.
    The 'dynamixel_driver' class includes wraped function used in DYNAMIXEL SDK.
    The 'dynamixel_workbench' class make simple to use Dynamixels'';
    license = with lib.licenses; [ asl20 ];
  };
}
