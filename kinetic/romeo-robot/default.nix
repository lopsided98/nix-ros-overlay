
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, romeo-sensors-py, catkin, romeo-description, romeo-bringup }:
buildRosPackage {
  pname = "ros-kinetic-romeo-robot";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-aldebaran/romeo_robot-release/archive/release/kinetic/romeo_robot/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "f410114726372ee2f24f2bf67ff4aa4976c5f0560024dde71cb6bcfa9f1841db";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ romeo-sensors-py romeo-description romeo-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The romeo_robot metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
