
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-std-msgs, roslib, rospy, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-utils";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_python_utils/0.3.2-0";
        sha256 = "sha256-SbsgwPKfNmi8Nx7qIJX41HYTbgrv8jxzRXwBAAmDOfo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.catkin-pkg pythonPackages.rospkg rocon-std-msgs roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python system and ros utilities.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
