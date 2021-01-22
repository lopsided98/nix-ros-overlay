
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, geometry-msgs, image-transport, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-stag-ros";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/usrl-uofsc/stag_ros-release/archive/release/melodic/stag_ros/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "8e4352d89fd773c91a4451293ff45f21c1055d9c21795f99854a86e84ec1d7b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager cv-bridge geometry-msgs image-transport nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The stag_ros package'';
    license = with lib.licenses; [ mit ];
  };
}
