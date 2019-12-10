
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-sesame-ros";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/sesame_ros/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "45f9d1ca3071d04da84ffe0b83d0f474a47be9be86f21e606654cc691c413327";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS API for Sesame smart lock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
