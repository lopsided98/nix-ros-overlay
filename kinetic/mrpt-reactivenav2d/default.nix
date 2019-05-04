
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-bridge, actionlib-msgs, tf, catkin, mrpt1, visualization-msgs, actionlib, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-reactivenav2d";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_reactivenav2d/0.1.24-0.tar.gz;
    sha256 = "6c0c1726cfc29045956a24fcec51ce0276c62ba8995b48ae2f54c3f61d77e625";
  };

  buildInputs = [ actionlib-msgs roscpp mrpt1 actionlib visualization-msgs dynamic-reconfigure mrpt-bridge tf geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs roscpp mrpt1 actionlib visualization-msgs dynamic-reconfigure mrpt-bridge tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
