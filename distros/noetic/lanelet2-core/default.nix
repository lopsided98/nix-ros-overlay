
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-core";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_core/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "986f5d9df003073397f4e062fe17c13cdae780ee20bb85e93c7ff5bff9402958";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 core module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
