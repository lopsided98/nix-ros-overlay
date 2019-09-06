
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, catkin, cv-bridge, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-costmap-converter";
  version = "0.0.9";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/kinetic/costmap_converter/0.0.9-0.tar.gz";
    name = "0.0.9-0.tar.gz";
    sha256 = "7db5256548d15973278387505fd9f7acb2a9cdbffccee0e3b7d5d9225de5f1e2";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib cv-bridge message-generation dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib cv-bridge message-runtime dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
