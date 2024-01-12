
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, lanelet2-core, mrt-cmake-modules, pugixml }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-io";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_io/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "6c6b699f41b763db2cdfe0e22f78ca47e84d2330828b281354242163b9c4f589";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core mrt-cmake-modules pugixml ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Parser/Writer module for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
