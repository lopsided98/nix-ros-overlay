
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosdoc-lite, catkin, quaternion-operation, roscpp, tf2-geometry-msgs, eigen, tf2-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-odom-frame-publisher";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/odom_frame_publisher-release/archive/release/kinetic/odom_frame_publisher/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "563fad34971862cb8deb8685f6dd09c79f28a71739ba64d8ae64e1e8f231abbe";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs tf2 quaternion-operation tf2-geometry-msgs eigen tf2-msgs roscpp tf2-ros ];
  propagatedBuildInputs = [ geometry-msgs rosdoc-lite tf2 quaternion-operation tf2-geometry-msgs eigen tf2-msgs roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The odom_frame_publisher package'';
    license = with lib.licenses; [ asl20 ];
  };
}
