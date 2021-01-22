
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rosatomic";
  version = "1.0.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/kinetic/rosatomic/1.0.25-0.tar.gz";
    name = "1.0.25-0.tar.gz";
    sha256 = "88d799652518201a36dcb10edd31c7b29bb684cd68face857348501f27cb9eb8";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosatomic provides the C++11-style atomic operations by pulling symbols from the proposed Boost.Atomic
     package into the ros namespace.  Once C++11-style atomics (std::atomic) are available from compilers, rosatomic will
     conditionally use those instead.'';
    license = with lib.licenses; [ bsdOriginal boost ];
  };
}
