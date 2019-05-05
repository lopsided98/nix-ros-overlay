
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sensor-msgs, catkin, mavros, roscpp, urdf, visualization-msgs, tf2-eigen, std-msgs, tf, mavros-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-extras";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_extras/0.29.2-0.tar.gz;
    sha256 = "1331ad93923e651a54cf17a666cb86b3b16d94255a4dbcb73dadc6cef75d487c";
  };

  buildInputs = [ cmake-modules sensor-msgs mavros roscpp urdf tf2-eigen visualization-msgs std-msgs tf mavros-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs mavros roscpp urdf tf2-eigen visualization-msgs std-msgs tf mavros-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra nodes and plugins for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
