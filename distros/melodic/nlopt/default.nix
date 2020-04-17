
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libtool, mk, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-melodic-nlopt";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/nlopt/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "bf2908adae4ca00537ec74dd9a0fbc49eae8506e3da8da290100e876d60dc168";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules libtool mk rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
