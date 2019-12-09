
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-marti-visualization-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_visualization_msgs/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "09801787ccf1dbfc0dca3e719e3444552fb5d05834fa8036961ae603866e0cd2";
  };

  buildType = "catkin";
  buildInputs = [ message-generation sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_visualization_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
