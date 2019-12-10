
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-manipulation, cob-navigation, htop, openssh, pythonPackages, robot-upstart, tmux, tree, vim }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot-robot";
  version = "0.6.7";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot_robot/0.6.7-0.tar.gz";
    name = "0.6.7-0.tar.gz";
    sha256 = "05b10f5d55b27e23aaa962be2cd693b879b3180947e249f8c9eab3f9a753869a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-bringup cob-manipulation cob-navigation htop openssh pythonPackages.wstool robot-upstart tmux tree vim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-robot meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
