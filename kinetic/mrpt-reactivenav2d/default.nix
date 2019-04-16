
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, actionlib-msgs, tf, catkin, mrpt1, visualization-msgs, actionlib, mrpt-bridge, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-reactivenav2d";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_reactivenav2d/0.1.24-0.tar.gz;
    sha256 = "6c0c1726cfc29045956a24fcec51ce0276c62ba8995b48ae2f54c3f61d77e625";
  };

  buildInputs = [ mrpt-bridge actionlib-msgs tf roscpp mrpt1 actionlib dynamic-reconfigure visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ mrpt-bridge actionlib-msgs tf roscpp mrpt1 actionlib dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    #license = lib.licenses.BSD;
  };
}
