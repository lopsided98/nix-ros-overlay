
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, pluginlib, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-costmap-converter";
  version = "0.0.13-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/noetic/costmap_converter/0.0.13-1.tar.gz";
    name = "0.0.13-1.tar.gz";
    sha256 = "1fc08ca45b83e4fc557b9b34b5f3fb1684af9a87dabd655fc72a1f3106f26d1d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d cv-bridge dynamic-reconfigure geometry-msgs message-runtime pluginlib roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
