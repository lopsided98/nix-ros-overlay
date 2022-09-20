
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rocon-bubble-icons";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_bubble_icons/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "4f454f561a9f325246e487e1499d05c6c43cf16aac9a4926029211f8c41b6ad1";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bubble icon library for rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
