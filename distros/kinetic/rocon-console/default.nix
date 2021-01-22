
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rocon-console";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_console/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "69f9fea0fa54cf97c6e6c98ba7891ee87a02e3fe98a295612bdf5920865e86c5";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command line python console utilities (mostly for colourisation).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
