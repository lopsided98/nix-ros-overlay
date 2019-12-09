
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, topic-tools, pr2-machine, catkin, pr2-teleop }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-teleop";
  version = "0.1.28";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_teleop/0.1.28-0.tar.gz";
    name = "0.1.28-0.tar.gz";
    sha256 = "254013859ee8e6e2f76b3ecb0aa5788a413ba47b91071c5ede5fbff6e0d11923";
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
