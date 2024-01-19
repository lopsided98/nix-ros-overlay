
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flatland-msgs, flatland-plugins, flatland-server, flatland-viz }:
buildRosPackage {
  pname = "ros-noetic-flatland";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "1231b74cb6358df0c2fc2ffa3c419b764bd51d7bf3b2adef2962dd3103838887";
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
