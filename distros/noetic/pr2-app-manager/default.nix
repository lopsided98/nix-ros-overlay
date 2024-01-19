
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, roslaunch, rostest, willow-maps }:
buildRosPackage {
  pname = "ros-noetic-pr2-app-manager";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/pr2_app_manager/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "f3cd087830e5f17457de40c24f9f499f3efe2a46a9db773d6ab54bd6c5c30d9b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ app-manager willow-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and tools for running the application manager on the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
