
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-dynamic-tf-publisher";
  version = "2.2.11-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/dynamic_tf_publisher/2.2.11-2.tar.gz";
    name = "2.2.11-2.tar.gz";
    sha256 = "641d4138a4c105415c5199235e6b783357adbf11831e9ab0e60ec3a368bcefc5";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dynamically set the tf trensformation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
