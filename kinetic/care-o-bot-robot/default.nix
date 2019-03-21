
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-navigation, tmux, openssh, catkin, tree, vim, pythonPackages, cob-bringup, cob-manipulation, robot-upstart, htop }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot-robot";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot_robot/0.6.7-0.tar.gz;
    sha256 = "05b10f5d55b27e23aaa962be2cd693b879b3180947e249f8c9eab3f9a753869a";
  };

  propagatedBuildInputs = [ cob-navigation tmux openssh tree vim cob-bringup cob-manipulation robot-upstart htop pythonPackages.wstool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-robot meta-package'';
    #license = lib.licenses.Apache 2.0;
  };
}
