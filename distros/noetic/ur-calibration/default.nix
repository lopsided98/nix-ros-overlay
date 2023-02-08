
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, libyamlcpp, roscpp, rosunit, ur-client-library, ur-robot-driver }:
buildRosPackage {
  pname = "ros-noetic-ur-calibration";
  version = "2.1.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UniversalRobots";
        repo = "Universal_Robots_ROS_Driver-release";
        rev = "release/noetic/ur_calibration/2.1.2-1";
        sha256 = "sha256-Zp6pj1kBgPWeOk59VARXax7RwKKItJZXSMX9c7VdO3A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen libyamlcpp roscpp ur-client-library ur-robot-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF'';
    license = with lib.licenses; [ asl20 ];
  };
}
