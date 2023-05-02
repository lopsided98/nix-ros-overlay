
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-noetic-jackal-tutorials";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_tutorials/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "40b9e43caaec185d618a16f92c425982cc66acf7c7cec067a09815c417d8b4bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
