
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-moveit-experimental";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_experimental/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "98059d942d39177b0ea180c292d68c1a4881c09d4c1613ccc906b8d1258443c8";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Experimental packages for moveit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
