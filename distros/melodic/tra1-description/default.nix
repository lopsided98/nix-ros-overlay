
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, roslaunch, rostest, rviz, tf, xacro }:
buildRosPackage {
  pname = "ros-melodic-tra1-description";
  version = "1.0.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "minas-release";
        rev = "release/melodic/tra1_description/1.0.10-1";
        sha256 = "sha256-nzu//p4QJ8jdi6VNavImGxeTM4A5exJHuGpm3nXHyhw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,  etc.) of the TRA1 robot. The files in this package are parsed and used by a variety of other components.  Most users will not interact directly with this package.'';
    license = with lib.licenses; [ "GPL-2.0-only" "CC-BY-SA" ];
  };
}
