
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, marker-msgs, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, ros-environment, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-noetic-mrpt-msgs-bridge";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_msgs_bridge/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "8535ee14b6ae934eb6fa36b0a74cf98ef074e507917c6f7e4331f33dd22be6b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ geometry-msgs marker-msgs mrpt-libobs mrpt-libros-bridge mrpt-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ library to convert between custom mrpt_msgs messages and native MRPT classes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
