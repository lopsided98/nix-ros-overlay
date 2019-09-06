
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-moveit-experimental";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_experimental/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "efb3b0d7a04e28dda419582e8ec4ab046471ce7bba381613e0e3baafbe9b8ebc";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Experimental packages for moveit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
