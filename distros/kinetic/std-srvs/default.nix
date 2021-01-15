
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-std-srvs";
  version = "1.11.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/kinetic/std_srvs/1.11.2-0.tar.gz";
    name = "1.11.2-0.tar.gz";
    sha256 = "223955e2e05e6d86f5c1f57d00c55e4a2f6ac3f9060f727ee512b2602c253184";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common service definitions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
