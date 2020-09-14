
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libtool, mk, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-noetic-nlopt";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/nlopt/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "f9392ecabdfbe0c5dc4da19aeeb8492bfdf513cd446b534608c309c53db1773f";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules libtool mk rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
