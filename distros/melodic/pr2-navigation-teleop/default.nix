
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-machine, pr2-teleop, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-teleop";
  version = "0.1.28-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_navigation-release";
        rev = "release/melodic/pr2_navigation_teleop/0.1.28-1";
        sha256 = "sha256-tdXx0NwpLGtH1wMfVSg+EAchlwaJPKGj7ZS0hc+Iu80=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-machine pr2-teleop topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds a special teleop configuration for the PR2 robot that
     should be used when running applications that use autonomous navigation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
