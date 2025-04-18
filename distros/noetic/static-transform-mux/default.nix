
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-static-transform-mux";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/static_transform_mux-release/archive/release/noetic/static_transform_mux/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "1e144c9a7be2cc7f3271f923e88e88f79a7506067857ec9e0115a60313237056";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A helper node that makes sure everybody knows about all static transforms, even if they are published by multiple publishers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
