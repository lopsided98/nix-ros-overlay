
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rocon-icons";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_icons/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "82f1982ca80bfa25bf41eeccd556449b9adceb2ebd9045c910ab1526328424f2";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Icons for rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
