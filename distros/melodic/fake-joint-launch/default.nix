
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb2400-support, catkin, controller-manager, fake-joint-driver, pr2-description, robot-state-publisher, roslaunch, rostest, rviz }:
buildRosPackage {
  pname = "ros-melodic-fake-joint-launch";
  version = "0.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "fake_joint-release";
        rev = "release/melodic/fake_joint_launch/0.0.4-1";
        sha256 = "sha256-CqacIJEYJcEA/j6yylhUyGqq+iVIuOS3SugFi+ZBzvM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ abb-irb2400-support controller-manager fake-joint-driver pr2-description robot-state-publisher roslaunch rostest rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for fake_joint_driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
