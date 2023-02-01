
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-cmd-vel-mux, yocs-controllers, yocs-diff-drive-pose-controller, yocs-joyop, yocs-keyop, yocs-math-toolkit, yocs-rapps, yocs-safety-controller, yocs-velocity-smoother, yocs-virtual-sensor, yocs-waypoints-navi }:
buildRosPackage {
  pname = "ros-melodic-yujin-ocs";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yujin_ocs/0.8.2-0";
        sha256 = "sha256-jDHGad1lvfDZjFKHdotf6xIF9NoiedxbG9GdGkl+5ZQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ yocs-cmd-vel-mux yocs-controllers yocs-diff-drive-pose-controller yocs-joyop yocs-keyop yocs-math-toolkit yocs-rapps yocs-safety-controller yocs-velocity-smoother yocs-virtual-sensor yocs-waypoints-navi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin Robot's open-source control software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
