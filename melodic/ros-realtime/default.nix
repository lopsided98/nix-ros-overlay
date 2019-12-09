
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosatomic, catkin, rosrt, lockfree, allocators }:
buildRosPackage {
  pname = "ros-melodic-ros-realtime";
  version = "1.0.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/melodic/ros_realtime/1.0.25-0.tar.gz";
    name = "1.0.25-0.tar.gz";
    sha256 = "7106572a7a1fc86e47f9df7ab27badd45a0f8b55c3bbff666fdb8c7a5d0a72e2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lockfree rosatomic rosrt allocators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_realtime package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
