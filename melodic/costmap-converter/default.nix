
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, catkin, cv-bridge, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-converter";
  version = "0.0.9";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/melodic/costmap_converter/0.0.9-0.tar.gz";
    name = "0.0.9-0.tar.gz";
    sha256 = "350d4ffc88daa687ea48b4fb8b04889a95b9213f2f5ef676e49ceba9120fc8c7";
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
