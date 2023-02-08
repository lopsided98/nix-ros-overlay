
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, dynamic-reconfigure, euscollada, move-base-msgs, nav-msgs, pr2-controllers-msgs, pr2-description, pr2-gazebo, pr2-mechanism-msgs, pr2-msgs, robot-state-publisher, roseus, rosgraph-msgs, rostest, sound-play }:
buildRosPackage {
  pname = "ros-melodic-pr2eus";
  version = "0.3.14-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_pr2eus-release";
        rev = "release/melodic/pr2eus/0.3.14-3";
        sha256 = "sha256-iXBm3aNSIwMIk7adqRCNrJ6EzW9PFE3BfBMmPHbaM+w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rosgraph-msgs ];
  checkInputs = [ pr2-gazebo robot-state-publisher rostest ];
  propagatedBuildInputs = [ control-msgs dynamic-reconfigure euscollada move-base-msgs nav-msgs pr2-controllers-msgs pr2-description pr2-mechanism-msgs pr2-msgs roseus sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
