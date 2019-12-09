
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-machine, catkin, pr2-tuck-arms-action, pr2-move-base, move-base, topic-tools, pr2-navigation-config, joint-trajectory-generator }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-local";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation_local/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "1c6411bd2d1fce5a45a9a803bbcc502798392734c699402a88ae6c5121d4f290";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-machine pr2-tuck-arms-action pr2-move-base move-base topic-tools pr2-navigation-config joint-trajectory-generator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds xml files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
