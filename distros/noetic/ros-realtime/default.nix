
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, allocators, catkin, lockfree, rosatomic, rosrt }:
buildRosPackage {
  pname = "ros-noetic-ros-realtime";
  version = "1.0.25-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/noetic/ros_realtime/1.0.25-1.tar.gz";
    name = "1.0.25-1.tar.gz";
    sha256 = "0811e1663055633e75b9949b650f0c3c57d0e3a40c476e9980c83ada8ec2566d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ allocators lockfree rosatomic rosrt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_realtime package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
