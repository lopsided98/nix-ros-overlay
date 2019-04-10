
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, catkin, cv-bridge, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-costmap-converter";
  version = "0.0.9";

  src = fetchurl {
    url = https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/lunar/costmap_converter/0.0.9-0.tar.gz;
    sha256 = "93484e3db89db472676c4cc86065f28a1635d72e3c0c03173ad8edd5c75c158d";
  };

  buildInputs = [ costmap-2d message-generation pluginlib dynamic-reconfigure std-msgs geometry-msgs cv-bridge roscpp ];
  propagatedBuildInputs = [ costmap-2d cv-bridge pluginlib message-runtime dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.'';
    #license = lib.licenses.BSD;
  };
}
