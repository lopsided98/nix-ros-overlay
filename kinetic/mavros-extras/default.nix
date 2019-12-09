
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, mavros, geometry-msgs, urdf, std-msgs, tf, cmake-modules, catkin, tf2-eigen, mavros-msgs, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mavros-extras";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros_extras/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "2fcb97b841554aa45ee3012f07f37999ecb1b8004c255ada733ea6b1482c0398";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs mavros geometry-msgs urdf std-msgs tf cmake-modules tf2-eigen mavros-msgs visualization-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs mavros geometry-msgs urdf std-msgs tf tf2-eigen mavros-msgs visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra nodes and plugins for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
