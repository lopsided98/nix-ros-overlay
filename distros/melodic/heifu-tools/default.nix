
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-view, joy, joy-teleop }:
buildRosPackage {
  pname = "ros-melodic-heifu-tools";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_tools/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "a8df5536e68b7de5afb8c19bf1ed4079aeacab5e4b0fe4824b085907f68db656";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-view joy joy-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu Tools'';
    license = with lib.licenses; [ "TODO" ];
  };
}
