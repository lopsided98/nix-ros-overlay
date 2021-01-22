
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rocon-bubble-icons";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_bubble_icons/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "d7f3353e325059f376a2a72d11b876fd3ff4e942e097d8ddb82829f2485e7308";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bubble icon library for rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
