
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, joint-trajectory-generator, move-base, pr2-machine, pr2-move-base, pr2-navigation-config, pr2-tuck-arms-action, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-pr2-navigation-global";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/pr2_navigation_global/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "3b31ef840cf89724d95f86964134f7289b3133a5875a1e2c212ba4c0b8f2d2e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl joint-trajectory-generator move-base pr2-machine pr2-move-base pr2-navigation-config pr2-tuck-arms-action topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds XML files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
