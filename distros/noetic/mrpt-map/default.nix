
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-libmaps, mrpt-libros-bridge, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mrpt-map";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_map/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "0f27e86b10d2f1c09886dcdd77f690ebaf80ae667badc0e6624c6a8b0fe36493";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-libmaps mrpt-libros-bridge nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
