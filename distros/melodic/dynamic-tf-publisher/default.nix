
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-dynamic-tf-publisher";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/dynamic_tf_publisher/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "886b71646612b3537999fc3ddd2cb4cfc7aacae23b22c8ba02a5f2e2ae5977be";
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
