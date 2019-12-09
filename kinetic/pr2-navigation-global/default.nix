
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-machine, catkin, pr2-tuck-arms-action, pr2-move-base, move-base, topic-tools, amcl, pr2-navigation-config, joint-trajectory-generator }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-global";
  version = "0.1.28";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_global/0.1.28-0.tar.gz";
    name = "0.1.28-0.tar.gz";
    sha256 = "fb5bf2e4615836de39da5c6e093341919e81afa3b69da87f6eb9d1019e34a833";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-machine pr2-tuck-arms-action pr2-move-base move-base topic-tools amcl pr2-navigation-config joint-trajectory-generator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds XML files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
