
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a193de5e42a5597fa979d690feaa9633a3fcf4a9e2361a4a001a003a7887ac06";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
