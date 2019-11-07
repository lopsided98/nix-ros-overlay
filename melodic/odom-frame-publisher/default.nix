
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, tf2-geometry-msgs, catkin, tf2-ros, tf2, quaternion-operation, eigen, rosdoc-lite, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-odom-frame-publisher";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/odom_frame_publisher-release/archive/release/melodic/odom_frame_publisher/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "e91bd51c0e7df5c5f225d5957d58d33125ad5393b1e457b1f2ee677b67ebb674";
  };

  buildType = "catkin";
  buildInputs = [ tf2-msgs tf2-geometry-msgs tf2-ros tf2 quaternion-operation eigen roscpp geometry-msgs ];
  propagatedBuildInputs = [ tf2-msgs tf2-geometry-msgs tf2-ros tf2 quaternion-operation eigen rosdoc-lite roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The odom_frame_publisher package'';
    license = with lib.licenses; [ asl20 ];
  };
}
