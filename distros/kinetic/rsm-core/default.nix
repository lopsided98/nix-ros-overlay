
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, pluginlib, roscpp, rsm-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rsm-core";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_core/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "911b1f3c4a5809e9737ffe205a519e4489cfa71ccc8d249715e0ed815a69efac";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs pluginlib roscpp rsm-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The statemachine package includes the Robot Statemachine's
		main functionality'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
