
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-app-manager, pr2-teleop-general, pr2-position-scripts, pr2-kinematics, pr2-mannequin-mode, catkin, pr2-tuckarm }:
buildRosPackage {
  pname = "ros-melodic-pr2-apps";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_apps/0.6.1-0.tar.gz;
    sha256 = "a471719fbd2ecf7326f9e8fa12dcb54af210539ab199fb080a2f942825665d8a";
  };

  propagatedBuildInputs = [ pr2-app-manager pr2-teleop-general pr2-position-scripts pr2-kinematics pr2-mannequin-mode pr2-tuckarm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic applications for the PR2 robot'';
    #license = lib.licenses.BSD;
  };
}
