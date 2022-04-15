
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf-jsk-patch, gazebo-ros, pythonPackages, roseus, rostest }:
buildRosPackage {
  pname = "ros-noetic-eusurdf";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eusurdf/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "b74f03dfd5d156cbf563c1ef108d74b646563d325141765ad541ec7defb63f86";
  };

  buildType = "catkin";
  buildInputs = [ roseus ];
  propagatedBuildInputs = [ collada-urdf-jsk-patch gazebo-ros pythonPackages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
