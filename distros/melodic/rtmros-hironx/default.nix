
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hironx-calibration, hironx-moveit-config, hironx-ros-bridge }:
buildRosPackage {
  pname = "ros-melodic-rtmros-hironx";
  version = "2.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_hironx-release";
        rev = "release/melodic/rtmros_hironx/2.2.0-1";
        sha256 = "sha256-ixA1EUT35aNEg5mCWmxYFGdJ8VjGsRP9E35kRB2zts4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hironx-calibration hironx-moveit-config hironx-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_hironx package is an operating interface via ROS and OpenRTM, for Hiro and <a href="http://nextage.kawada.jp/en/">NEXTAGE OPEN</a> dual-armed robots from Kawada Industries Inc.
  <br/><br/>
  NOTE for Hiro users: Utilizing this opensource controller for Hiro requires installation both on Controller Box (QNX-based) and Vision PC (Ubuntu Linux), and the steps for it are not shared publicly in order to avoid any possible inconvenience that can easily be caused by slight mis-operation during installation. Please contact <a href="http://opensource-robotics.tokyo.jp/?page_id=56&amp;lang=en">TORK</a> for an advice.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
