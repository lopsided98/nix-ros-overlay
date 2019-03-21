
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtle-tf2, turtle-tf }:
buildRosPackage {
  pname = "ros-kinetic-geometry-tutorials";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry_tutorials-release/archive/release/kinetic/geometry_tutorials/0.2.2-0.tar.gz;
    sha256 = "628cda1df8b297a0e01003b7bf833cc46f739fe58fe363f49932d5abffa18323";
  };

  propagatedBuildInputs = [ turtle-tf2 turtle-tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    #license = lib.licenses.BSD;
  };
}
