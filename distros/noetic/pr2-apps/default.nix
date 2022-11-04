
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-app-manager, pr2-kinematics, pr2-mannequin-mode, pr2-position-scripts, pr2-teleop-general, pr2-tuckarm }:
buildRosPackage {
  pname = "ros-noetic-pr2-apps";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/pr2_apps/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "9f440b86847576601a7ea53b1c349af21804075f861ef10c0f671a679b5bedf2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-app-manager pr2-kinematics pr2-mannequin-mode pr2-position-scripts pr2-teleop-general pr2-tuckarm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic applications for the PR2 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
