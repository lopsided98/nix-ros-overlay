
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-rx-service-tools";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nobleo";
        repo = "rx_service_tools-release";
        rev = "release/melodic/rx_service_tools/1.0.1-1";
        sha256 = "sha256-lWHlCm5e8l2tsFp1Fooeov8ZPG6YzZGfIvgjPEOKwDE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python pythonPackages.pyyaml pythonPackages.wxPython roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical tools to interact with ROS services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
