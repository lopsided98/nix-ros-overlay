
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, map-server, nav-core2, nav-msgs, pluginlib, roscpp, roslint }:
buildRosPackage {
  pname = "ros-melodic-global-planner-tests";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/melodic/global_planner_tests/0.3.0-1";
        sha256 = "sha256-KYuVFQT7UB5CQhx8UHiKd0TXJxPicUr4MoKaNVW0/i4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ libyamlcpp map-server nav-core2 nav-msgs pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tests for checking the validity and completeness of global planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
