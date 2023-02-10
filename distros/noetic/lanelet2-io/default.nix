
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, lanelet2-core, mrt-cmake-modules, pugixml }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-io";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_io/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "dec750c61a59d8bb8fc19d950a28ae51bfab244cdf0c57e4c25dd7c41b967621";
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
