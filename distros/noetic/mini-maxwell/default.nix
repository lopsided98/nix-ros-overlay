
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, roslib }:
buildRosPackage {
  pname = "ros-noetic-mini-maxwell";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/mini_maxwell/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "165295f7ac46a352a0fffeca5e20e02a95c3563a8b81cd28683fa5ca48212bb8";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules roslib ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "mini_maxwell";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
