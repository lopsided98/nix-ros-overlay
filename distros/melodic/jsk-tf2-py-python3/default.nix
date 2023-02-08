
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy, tf2 }:
buildRosPackage {
  pname = "ros-melodic-jsk-tf2-py-python3";
  version = "0.6.9-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "geometry2_python3-release";
        rev = "release/melodic/jsk_tf2_py_python3/0.6.9-2";
        sha256 = "sha256-nrFC8Czn5n5iZLRvPaDbFTVDY3payeFM7CH4CiiBvlk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg ];
  propagatedBuildInputs = [ python3Packages.rospkg rospy tf2 ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg ];

  meta = {
    description = ''The tf2_py package for python3 compatibility in melodic environment. Supported by ROS community.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
