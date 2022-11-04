
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-stag-ros";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/usrl-uofsc/stag_ros-release/archive/release/melodic/stag_ros/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "e0ad126a2ffbeacc996a39f3dc98b53401462a21d0aa46ba4873233f8c9b90ba";
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
