
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mrpt-bridge, mrpt2, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-reactivenav2d";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_reactivenav2d/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "679da45a84c04348062a832fc991de4c3ae33c955ebeae73dec5845a0df39eb4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs mrpt-bridge mrpt2 roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
