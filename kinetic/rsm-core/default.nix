
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, std-srvs, std-msgs, actionlib, tf, catkin, actionlib-msgs, roscpp, rsm-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rsm-core";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_core/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "911b1f3c4a5809e9737ffe205a519e4489cfa71ccc8d249715e0ed815a69efac";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib std-msgs std-srvs actionlib tf actionlib-msgs roscpp rsm-msgs ];
  propagatedBuildInputs = [ geometry-msgs pluginlib std-msgs std-srvs actionlib tf actionlib-msgs roscpp rsm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The statemachine package includes the Robot Statemachine's
		main functionality'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
