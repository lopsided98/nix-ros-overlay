
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, cmake-modules, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-mini-maxwell";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/mini_maxwell/2.1.11-0.tar.gz;
    sha256 = "a69fc95ceca0f3b9035039ac42b1805c74f2bb0f11dd017e7ec7fbbd1a531e7c";
  };

  buildInputs = [ roslib cmake-modules dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
