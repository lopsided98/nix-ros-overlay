
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, ecl-build, ecl-linear-algebra, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-yocs-navi-toolkit";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yocs_navi_toolkit/0.8.2-0";
        sha256 = "sha256-f+kkI0Ox4iSb/M9NkqXQjzn0jOa1KeiP3uwkEI+Dxc0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d ecl-build ecl-linear-algebra nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros navigation utilities.'';
    license = with lib.licenses; [ "Yujin-Robot" ];
  };
}
