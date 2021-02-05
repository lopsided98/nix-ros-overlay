
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, mavros, mavros-msgs, roscpp, sensor-msgs, std-msgs, tf, tf2-eigen, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-extras";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_extras/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "62642bbd36b8a722d71dc950d411038ac82a7ec3ec5f31903983b51d20060272";
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
