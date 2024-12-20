
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-dynamic-tf-publisher";
  version = "2.2.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/dynamic_tf_publisher/2.2.14-1.tar.gz";
    name = "2.2.14-1.tar.gz";
    sha256 = "9855465b0aa0653cb6594105ecdcfe10f2036be56fcb66e3e4c984dd5578bfe2";
  };

  buildType = "catkin";
  buildInputs = [ catkin dynamic-reconfigure message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "dynamically set the tf trensformation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
