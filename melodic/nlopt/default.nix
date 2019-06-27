
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, cmake-modules, mk, catkin, rosbuild, libtool }:
buildRosPackage {
  pname = "ros-melodic-nlopt";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/nlopt/2.1.12-2.tar.gz;
    sha256 = "2821b38b4d7a76dae02c1e40953ae5a1f68410f6f1c74014c5e1043966088489";
  };

  buildInputs = [ rospack cmake-modules mk rosbuild libtool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
