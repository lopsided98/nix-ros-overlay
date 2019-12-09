
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, topic-tools, pr2-machine, catkin, pr2-teleop }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-teleop";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation_teleop/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "20494894d2fee4d8cc3f031c7bfe15dd0e4c0375246cc7fd145c4ba3e4c04614";
  };

  buildType = "catkin";
  buildInputs = [ topic-tools pr2-machine pr2-teleop ];
  propagatedBuildInputs = [ topic-tools pr2-machine pr2-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds a special teleop configuration for the PR2 robot that
     should be used when running applications that use autonomous navigation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
