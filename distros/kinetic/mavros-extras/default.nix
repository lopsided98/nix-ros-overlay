
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, mavros, mavros-msgs, roscpp, sensor-msgs, std-msgs, tf, tf2-eigen, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mavros-extras";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros_extras/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "53297aaa3085aa51dcb9faa4a98e1cf98626078c3036e98bb6d887ea238b0d03";
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
