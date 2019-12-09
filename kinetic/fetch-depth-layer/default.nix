
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, pluginlib, catkin, image-transport, costmap-2d, opencv-candidate, cv-bridge, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fetch-depth-layer";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_depth_layer/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "3e7fb48e76b64d166572bd6458aa4b38a88c7421e26e6ea245502b216b050b4c";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs pluginlib image-transport costmap-2d opencv-candidate cv-bridge roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs pluginlib image-transport costmap-2d opencv-candidate cv-bridge roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_depth_layer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
