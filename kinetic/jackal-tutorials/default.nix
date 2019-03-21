
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosdoc-lite, catkin }:
buildRosPackage {
  pname = "ros-kinetic-jackal-tutorials";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_tutorials/0.6.1-0.tar.gz;
    sha256 = "a7f26d6969c18c80f135c4c7e2af701ecd16c1f50e0cc4e6bab9c5e9cd7d91f5";
  };

  nativeBuildInputs = [ rosdoc-lite catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    #license = lib.licenses.BSD;
  };
}
