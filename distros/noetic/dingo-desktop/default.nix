
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-msgs, dingo-viz }:
buildRosPackage {
  pname = "ros-noetic-dingo-desktop";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_desktop-release/archive/release/noetic/dingo_desktop/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "3dddb3f00733090f01f5f1cac43ff8e59dabdbad721894f2f075a03f44eed25c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dingo-msgs dingo-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Dingo from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
