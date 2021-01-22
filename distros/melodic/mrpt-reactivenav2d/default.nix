
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mrpt-bridge, mrpt1, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-reactivenav2d";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_reactivenav2d/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "6c7352f0b6f9eda20e956b30797e10bb40b0aa1ba0a22be33a872f5d3a2eb47a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs mrpt-bridge mrpt1 roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
