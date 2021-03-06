
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, mavros, mavros-msgs, roscpp, sensor-msgs, std-msgs, tf, tf2-eigen, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mavros-extras";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/mavros_extras/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "c51cc0bde07f5f41a710f5d85fa1dfa566cea4cd636f06ee0e557dde5e79738e";
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
