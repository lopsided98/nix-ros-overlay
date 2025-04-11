
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-std-srvs";
  version = "1.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/noetic/std_srvs/1.11.4-1.tar.gz";
    name = "1.11.4-1.tar.gz";
    sha256 = "1a2c9d3e1eb7b74dcf47cf82b2f263f8fbd95f4d0861c292d181358da98f5ba4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Common service definitions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
