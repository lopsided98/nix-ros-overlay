
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl, rostest }:
buildRosPackage {
  pname = "ros-noetic-sesame-ros";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/sesame_ros/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "940945b79ec0d739dfb2ad100f7c3f34e49c6172d8f92b7f731d12fb90c48960";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv libffi message-generation openssl ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS API for Sesame smart lock";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
