
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-rosatomic";
  version = "1.0.25-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/noetic/rosatomic/1.0.25-1.tar.gz";
    name = "1.0.25-1.tar.gz";
    sha256 = "9ccf553073556f61a80da3937f7832a28a0fa6296dea0cf7e2df86e0d3f42806";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosatomic provides the C++11-style atomic operations by pulling symbols from the proposed Boost.Atomic
     package into the ros namespace.  Once C++11-style atomics (std::atomic) are available from compilers, rosatomic will
     conditionally use those instead.'';
    license = with lib.licenses; [ bsdOriginal "BSL-1.0" ];
  };
}
