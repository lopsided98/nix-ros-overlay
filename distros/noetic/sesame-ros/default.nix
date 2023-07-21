
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl, rostest }:
buildRosPackage {
  pname = "ros-noetic-sesame-ros";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/sesame_ros/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "f4ae98e14d433eb21192118b0984e8df43b3af25c0e6ffcd057aaf95c5296a2f";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv libffi message-generation openssl ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS API for Sesame smart lock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
