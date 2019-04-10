
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-app-manager, pr2-teleop-general, pr2-position-scripts, pr2-kinematics, pr2-mannequin-mode, catkin, pr2-tuckarm }:
buildRosPackage {
  pname = "ros-lunar-pr2-apps";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/pr2_apps/0.6.1-0.tar.gz;
    sha256 = "16418a64861f8d343d8e08261220ebce730707ce7a1e1ec736e27cb6d02778ee";
  };

  propagatedBuildInputs = [ pr2-app-manager pr2-teleop-general pr2-position-scripts pr2-kinematics pr2-mannequin-mode pr2-tuckarm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic applications for the PR2 robot'';
    #license = lib.licenses.BSD;
  };
}
