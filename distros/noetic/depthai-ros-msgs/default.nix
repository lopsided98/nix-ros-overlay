
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-msgs";
  version = "2.7.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_msgs/2.7.2-1.tar.gz";
    name = "2.7.2-1.tar.gz";
    sha256 = "9a324409922e899ce60661cf859df951003fb1c200625b62ec57701de8f78d59";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to keep interface independent of the driver'';
    license = with lib.licenses; [ mit ];
  };
}
