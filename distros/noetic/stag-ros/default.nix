
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, geometry-msgs, image-transport, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-stag-ros";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/usrl-uofsc/stag_ros-release/archive/release/noetic/stag_ros/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "b39b8bed22738a18b760d55ec40a904efbd9ac2818b19ed559f57cde58b76c0c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager cv-bridge geometry-msgs image-transport nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The stag_ros package'';
    license = with lib.licenses; [ mit ];
  };
}
