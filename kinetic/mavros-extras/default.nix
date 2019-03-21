
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, sensor-msgs, catkin, mavros, urdf, visualization-msgs, tf2-eigen, std-msgs, roscpp, mavros-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mavros-extras";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros_extras/0.29.2-0.tar.gz;
    sha256 = "74527555e89d5ca1b0f704d01cbf3bf6573362c18ab3fcd3195ce12c8455f0fc";
  };

  propagatedBuildInputs = [ tf sensor-msgs mavros roscpp urdf tf2-eigen std-msgs visualization-msgs mavros-msgs geometry-msgs ];
  nativeBuildInputs = [ cmake-modules sensor-msgs mavros catkin roscpp urdf tf2-eigen visualization-msgs std-msgs tf mavros-msgs geometry-msgs ];

  meta = {
    description = ''Extra nodes and plugins for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    #license = lib.licenses.GPLv3;
  };
}
