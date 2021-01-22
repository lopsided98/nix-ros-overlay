
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping, joint-trajectory-generator, move-base, pr2-machine, pr2-move-base, pr2-navigation-config, pr2-tuck-arms-action, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-slam";
  version = "0.1.28";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_slam/0.1.28-0.tar.gz";
    name = "0.1.28-0.tar.gz";
    sha256 = "e8796ab2fb592f81822a0bd9a1264543c25e85164d812d30dd01d2524b5bae78";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gmapping joint-trajectory-generator move-base pr2-machine pr2-move-base pr2-navigation-config pr2-tuck-arms-action topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds launch files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
