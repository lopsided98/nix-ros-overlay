
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish-test-msgs";
  version = "0.9.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "StefanFabian";
        repo = "ros_babel_fish-release";
        rev = "release/melodic/ros_babel_fish_test_msgs/0.9.3-1";
        sha256 = "sha256-+IMs/suyQngfY9u5HXc+MuV9+iFMljF0rfMuTlobT5g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test messages for the ros_babel_fish project tests.'';
    license = with lib.licenses; [ mit ];
  };
}
