
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-manipulation, cob-navigation, htop, openssh, pythonPackages, robot-upstart, tmux, tree, vim }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot-robot";
  version = "0.7.8-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot_robot/0.7.8-2.tar.gz";
    name = "0.7.8-2.tar.gz";
    sha256 = "a8033e620766083bb222adeafcbbd504c114ba3a56792b30720664d10162efb7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-bringup cob-manipulation cob-navigation htop openssh pythonPackages.wstool robot-upstart tmux tree vim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-robot meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
