
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, geometry-msgs, image-transport, nodelet, roscpp, sensor-msgs, std-msgs, swri-nodelet, tf }:
buildRosPackage {
  pname = "ros-noetic-stag-ros";
  version = "0.3.6-r3";

  src = fetchurl {
    url = "https://github.com/usrl-uofsc/stag_ros-release/archive/release/noetic/stag_ros/0.3.6-3.tar.gz";
    name = "0.3.6-3.tar.gz";
    sha256 = "31402f89676556f53811e19a74dcbd179f8a30f28e9343157422b8c3755687d3";
  };

  buildType = "catkin";
  buildInputs = [ swri-nodelet ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge geometry-msgs image-transport nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The stag_ros package'';
    license = with lib.licenses; [ mit ];
  };
}
