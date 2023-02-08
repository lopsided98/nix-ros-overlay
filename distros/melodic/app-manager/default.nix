
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rosgraph, roslaunch, rospack, rospy, rospy-tutorials, rosservice, rostest, rosunit, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-app-manager";
  version = "1.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "app_manager-release";
        rev = "release/melodic/app_manager/1.3.0-1";
        sha256 = "sha256-+YOee0TOcGlubrysiHNh2ahnfWlFkFAfjvXE8XC7sb0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pythonPackages.setuptools ];
  checkInputs = [ pythonPackages.rosdep rospy-tutorials rosservice rostest ];
  propagatedBuildInputs = [ message-runtime rosgraph roslaunch rospack rospy rosunit std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''app_manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
