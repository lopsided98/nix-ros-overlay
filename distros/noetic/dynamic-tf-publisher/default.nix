
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-dynamic-tf-publisher";
  version = "2.2.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/dynamic_tf_publisher/2.2.15-4.tar.gz";
    name = "2.2.15-4.tar.gz";
    sha256 = "f1a9d4b2c46ad020e6af10d59c153edc4dfbef0d9161922d0d817601829dd5bc";
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
