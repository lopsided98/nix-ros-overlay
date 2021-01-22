
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, image-transport, nav-msgs, opencv-candidate, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fetch-depth-layer";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_depth_layer/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "3e7fb48e76b64d166572bd6458aa4b38a88c7421e26e6ea245502b216b050b4c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d cv-bridge image-transport nav-msgs opencv-candidate pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_depth_layer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
