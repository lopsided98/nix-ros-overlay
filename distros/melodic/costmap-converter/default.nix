
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, pluginlib, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-converter";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-release/archive/release/melodic/costmap_converter/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "1dfcb76c15596a6db7a4f16430c1c23fc0c89efe416c7c6605f5e770b10616fc";
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
