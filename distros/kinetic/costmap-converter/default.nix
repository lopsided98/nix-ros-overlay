
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, pluginlib, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-costmap-converter";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/kinetic/costmap_converter/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "9ee88a53ae04da71aa2a158d55aa0066bb27a0c415678d8ff59bd02b3f1917df";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d cv-bridge dynamic-reconfigure geometry-msgs message-runtime pluginlib roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
