
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-marti-visualization-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/lunar/marti_visualization_msgs/0.8.0-0.tar.gz;
    sha256 = "17553ce0173cf22c789ddcf3a2078286b184f795603e734dbc552fd4b4159593";
  };

  buildInputs = [ sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_visualization_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
