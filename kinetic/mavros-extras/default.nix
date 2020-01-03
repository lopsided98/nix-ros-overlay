
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, mavros, mavros-msgs, roscpp, sensor-msgs, std-msgs, tf, tf2-eigen, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mavros-extras";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros_extras/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5b5e681597d09056b284b3ea94384359bdd3ce2993e46498bf1989e139372546";
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
