
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flatland-msgs, flatland-plugins, flatland-server, flatland-viz }:
buildRosPackage {
  pname = "ros-noetic-flatland";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "784ee615a40de0de7527e0d037447b3fce595206a49d1e4ab0b78bf677d64cd1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ flatland-msgs flatland-plugins flatland-server flatland-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is the metapackage for flatland.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
