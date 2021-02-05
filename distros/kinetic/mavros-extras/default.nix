
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, mavros, mavros-msgs, roscpp, sensor-msgs, std-msgs, tf, tf2-eigen, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mavros-extras";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros_extras/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "bab3135721cd4b25b0ff625f5d0b348c3bf83f5270f83ac552442d8daed44a39";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ geometry-msgs mavros mavros-msgs roscpp sensor-msgs std-msgs tf tf2-eigen urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra nodes and plugins for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
