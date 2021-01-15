
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-app-manager, pr2-kinematics, pr2-mannequin-mode, pr2-position-scripts, pr2-teleop-general, pr2-tuckarm }:
buildRosPackage {
  pname = "ros-kinetic-pr2-apps";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_apps/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "d6233efd2dcb06410236f776ba3efbeb215c9db43a9155c452479e6152533be5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-app-manager pr2-kinematics pr2-mannequin-mode pr2-position-scripts pr2-teleop-general pr2-tuckarm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic applications for the PR2 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
