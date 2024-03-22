
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, marker-msgs, mrpt-msgs, mrpt2, ros-environment, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-noetic-mrpt-msgs-bridge";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_msgs_bridge/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "728cdfad5b650ef8cd263cb55ff0e93f354f0e30f7a9d1483de58d570ac8d297";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ geometry-msgs marker-msgs mrpt-msgs mrpt2 roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library to convert between custom mrpt_msgs messages and native MRPT classes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
