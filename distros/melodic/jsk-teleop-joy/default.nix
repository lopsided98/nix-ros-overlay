
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, image-view2, interactive-markers, joy-mouse, jsk-footstep-msgs, jsk-interactive-marker, jsk-rviz-plugins, ps3joy, pythonPackages, tf, view-controller-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-teleop-joy";
  version = "0.1.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_control-release";
        rev = "release/melodic/jsk_teleop_joy/0.1.16-1";
        sha256 = "sha256-sAd5SxDGajZnov0ogNZs8kLunRLe20194aYbIgf7ykQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater image-view2 interactive-markers joy-mouse jsk-footstep-msgs jsk-interactive-marker jsk-rviz-plugins ps3joy pythonPackages.pygame tf view-controller-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_teleop_joy'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
