
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-machine, catkin, pr2-tuck-arms-action, pr2-move-base, move-base, topic-tools, pr2-navigation-config, joint-trajectory-generator }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-local";
  version = "0.1.28";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_local/0.1.28-0.tar.gz";
    name = "0.1.28-0.tar.gz";
    sha256 = "559339bf891e4fd109bb506274a0949dcd756ad5370b198c44f17f94318a2f0b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-machine pr2-tuck-arms-action pr2-move-base move-base topic-tools pr2-navigation-config joint-trajectory-generator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds xml files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
