
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mrpt2, roscpp, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-reactivenav2d";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_reactivenav2d/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "2626281208cf311a3c49b9435df28729e5647bfce0ae4313073db1a19f9c712c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs mrpt2 roscpp tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
