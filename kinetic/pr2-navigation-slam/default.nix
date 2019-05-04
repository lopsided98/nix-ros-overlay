
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, pr2-navigation-config, joint-trajectory-generator, pr2-machine, catkin, move-base, pr2-move-base, topic-tools, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-slam";
  version = "0.1.28";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_slam/0.1.28-0.tar.gz;
    sha256 = "e8796ab2fb592f81822a0bd9a1264543c25e85164d812d30dd01d2524b5bae78";
  };

  propagatedBuildInputs = [ gmapping pr2-navigation-config joint-trajectory-generator topic-tools move-base pr2-move-base pr2-machine pr2-tuck-arms-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds launch files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
