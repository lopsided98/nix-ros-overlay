
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, texmaker, openssh, gimp, desktop-full, catkin, terminator, vim, pythonPackages, tree, chromium, blender, care-o-bot, gitg, meld, disper }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot-desktop";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot_desktop/0.6.7-0.tar.gz;
    sha256 = "99ba8e45c8f64082998f687c7211d3bece93d42fc2aa14da64f9202d65e53d95";
  };

  propagatedBuildInputs = [ texmaker openssh gimp desktop-full pythonPackages.rosinstall tree vim chromium terminator blender care-o-bot gitg meld disper pythonPackages.wstool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-desktop meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
