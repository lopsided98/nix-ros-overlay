
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslint, rospy, rostest, rostopic, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pyros-test";
  version = "0.0.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pyros-dev";
        repo = "pyros-test-release";
        rev = "release/melodic/pyros_test/0.0.6-1";
        sha256 = "sha256-12Wn1ZrTcwE+CDqJNMOR8WTf9XFGDE/JuJDYkgQ3O2g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ rostest rostopic rosunit ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic test nodes for Pyros dynamic ROS interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
