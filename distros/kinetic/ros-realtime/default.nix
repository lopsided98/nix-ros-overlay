
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, allocators, catkin, lockfree, rosatomic, rosrt }:
buildRosPackage {
  pname = "ros-kinetic-ros-realtime";
  version = "1.0.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/kinetic/ros_realtime/1.0.25-0.tar.gz";
    name = "1.0.25-0.tar.gz";
    sha256 = "d6befaa3239551ccb92713f11985cc11d39d916c28141c51401079bb40297fe5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ allocators lockfree rosatomic rosrt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_realtime package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
