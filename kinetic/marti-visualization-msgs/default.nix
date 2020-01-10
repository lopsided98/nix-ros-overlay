
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marti-visualization-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_visualization_msgs/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "9b9fd7ace91bd5be3eb238b6b6fe2a69af991b4c9b4e040127d77fa0153d077f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_visualization_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
