
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sensor-msgs, catkin, mavros, roscpp, urdf, visualization-msgs, tf2-eigen, std-msgs, tf, mavros-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-extras";
  version = "0.32.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_extras/0.32.1-1.tar.gz";
    name = "0.32.1-1.tar.gz";
    sha256 = "c8a6b3fbbce0393b331ed88b9438965b7a7ad353e80cfab904bb5860f25e03ea";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules sensor-msgs mavros roscpp urdf tf2-eigen visualization-msgs std-msgs tf mavros-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs mavros roscpp urdf tf2-eigen visualization-msgs std-msgs tf mavros-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra nodes and plugins for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
