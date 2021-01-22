
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-machine, pr2-navigation-global, pr2-navigation-perception, pr2-navigation-teleop }:
buildRosPackage {
  pname = "ros-kinetic-pr2-2dnav";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation_apps-release/archive/release/kinetic/pr2_2dnav/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "200fd5682451a57e823c5d22dfb1f44a78cd37881be7c99f2623f7be67bf6cc6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-machine pr2-navigation-global pr2-navigation-perception pr2-navigation-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This application allows the PR2 robot to navigate autonomously with a pre-specified static map.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
