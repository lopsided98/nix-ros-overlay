
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, catkin, cv-bridge, rostest, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-converter";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/melodic/costmap_converter/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "47dc6c9c92810664e55ac37c0ddf4e7b14bda89d87d1a2c67a891933945f0bde";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib cv-bridge message-generation dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d pluginlib cv-bridge message-runtime dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
