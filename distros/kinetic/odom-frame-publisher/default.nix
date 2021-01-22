
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, quaternion-operation, roscpp, rosdoc-lite, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-odom-frame-publisher";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/odom_frame_publisher-release/archive/release/kinetic/odom_frame_publisher/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "563fad34971862cb8deb8685f6dd09c79f28a71739ba64d8ae64e1e8f231abbe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs quaternion-operation roscpp rosdoc-lite tf2 tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The odom_frame_publisher package'';
    license = with lib.licenses; [ asl20 ];
  };
}
