
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-bridge, actionlib-msgs, tf, catkin, mrpt1, visualization-msgs, actionlib, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-reactivenav2d";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_reactivenav2d/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "f8a59ff3781e368340ed0e38977733718a510a37df5ddc6b3d88f4279fcb9bc4";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs roscpp mrpt1 actionlib visualization-msgs dynamic-reconfigure mrpt-bridge tf geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs roscpp mrpt1 actionlib visualization-msgs dynamic-reconfigure mrpt-bridge tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
