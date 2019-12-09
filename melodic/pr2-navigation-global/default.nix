
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-machine, catkin, pr2-tuck-arms-action, pr2-move-base, move-base, topic-tools, amcl, pr2-navigation-config, joint-trajectory-generator }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-global";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation_global/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "29ba1baa16b77e54bc44ea4820ebab78e8d5ea1c87535d99aefd065912f9f8b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-machine pr2-tuck-arms-action pr2-move-base move-base topic-tools amcl pr2-navigation-config joint-trajectory-generator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds XML files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
