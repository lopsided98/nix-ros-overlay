
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ur-msgs";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_msgs/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "53416400810a21f670e4a9452232a59056105c300d69bd18ce76d3bfd8fce73f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ur_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
