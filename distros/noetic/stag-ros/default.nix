
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-stag-ros";
  version = "0.3.9-r3";

  src = fetchurl {
    url = "https://github.com/usrl-uofsc/stag_ros-release/archive/release/noetic/stag_ros/0.3.9-3.tar.gz";
    name = "0.3.9-3.tar.gz";
    sha256 = "5829fb232d80c8e092afc90f5ec25b6d912bf08674703e6288cbd59d58eb39b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge geometry-msgs image-transport message-generation message-runtime nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The stag_ros package'';
    license = with lib.licenses; [ mit ];
  };
}
