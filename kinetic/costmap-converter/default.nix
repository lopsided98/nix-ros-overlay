
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, pluginlib, std-msgs, catkin, costmap-2d, cv-bridge, roscpp, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-costmap-converter";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/kinetic/costmap_converter/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "9ee88a53ae04da71aa2a158d55aa0066bb27a0c415678d8ff59bd02b3f1917df";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure pluginlib std-msgs costmap-2d cv-bridge roscpp message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure pluginlib std-msgs costmap-2d cv-bridge roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
