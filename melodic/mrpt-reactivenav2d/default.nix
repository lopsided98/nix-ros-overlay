
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, actionlib-msgs, tf, catkin, mrpt1, visualization-msgs, actionlib, mrpt-bridge, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-reactivenav2d";
  version = "0.1.22";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_reactivenav2d/0.1.22-0.tar.gz;
    sha256 = "808b2bf5865060d35c80defc9bcc8976135f4ff2e8d54c4528aae759062a8e55";
  };

  buildInputs = [ mrpt-bridge actionlib-msgs tf roscpp mrpt1 actionlib dynamic-reconfigure visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ mrpt-bridge actionlib-msgs tf roscpp mrpt1 actionlib dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    #license = lib.licenses.BSD;
  };
}
