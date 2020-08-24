
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libtool, mk, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-melodic-nlopt";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/nlopt/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "0d71a862a94ea0a0f358875ecd812c3086b59e2b1a96efea646597ed0c859ba2";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules libtool mk rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
