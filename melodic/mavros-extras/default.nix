
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, mavros, geometry-msgs, urdf, std-msgs, tf, cmake-modules, catkin, tf2-eigen, mavros-msgs, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mavros-extras";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_extras/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "dc9f17b2c94a1ba600192153a294c20089af28cda7fdc629ae42ffbb67845b22";
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
