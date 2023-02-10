
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-maps";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_maps/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "9ac2f7295c5b958987b1a48a68884a8870b79de61fb889c49f9cdaca5ea1683b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Example maps in the lanelet2-format'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
