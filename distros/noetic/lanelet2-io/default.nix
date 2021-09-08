
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, lanelet2-core, mrt-cmake-modules, pugixml }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-io";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_io/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c17faa85a5a1fad9b956597b60963cb78e7f497e2b45356c67b24aea8c1efc4b";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core mrt-cmake-modules pugixml ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Parser/Writer module for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
