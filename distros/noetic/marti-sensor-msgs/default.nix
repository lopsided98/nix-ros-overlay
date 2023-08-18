
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marti-sensor-msgs";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/noetic/marti_sensor_msgs/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "db233b36db9e7baed6b6a157fafac76692085b2dc87036d612479daab3bf129e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_sensor_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
