
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosatomic";
  version = "1.0.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/melodic/rosatomic/1.0.25-0.tar.gz";
    name = "1.0.25-0.tar.gz";
    sha256 = "d4f38df7e64e7cef90ce597674a5832653f0e564dbc4163f5232fa180215b4d1";
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
