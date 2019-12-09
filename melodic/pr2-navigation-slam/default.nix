
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-machine, catkin, gmapping, pr2-tuck-arms-action, move-base, pr2-move-base, topic-tools, pr2-navigation-config, joint-trajectory-generator }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-slam";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation_slam/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "c96912eb50fe6f2bf5d043a6d5ce2b5face3eb73207bbfc43d91d18b972d903d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-machine gmapping pr2-tuck-arms-action move-base pr2-move-base topic-tools pr2-navigation-config joint-trajectory-generator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds launch files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
