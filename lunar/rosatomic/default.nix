
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-rosatomic";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/lunar/rosatomic/1.0.25-0.tar.gz;
    sha256 = "c35d86cb6986d7702ac7b005947920f0fc706c72a09e7190eb6522ad78f0069c";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosatomic provides the C++11-style atomic operations by pulling symbols from the proposed Boost.Atomic
     package into the ros namespace.  Once C++11-style atomics (std::atomic) are available from compilers, rosatomic will
     conditionally use those instead.'';
    license = with lib.licenses; [ bsdOriginal boost ];
  };
}
