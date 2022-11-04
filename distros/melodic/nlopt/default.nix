
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libtool, mk, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-melodic-nlopt";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/nlopt/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "f9128eae806b05a44d01a1e3ce57cf0e9690a0fa14a810dad22877a49383da0c";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules libtool mk rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
