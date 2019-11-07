
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libdlib";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libdlib/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "59af6be6eb20b19841039979092d1c0d586b455712a87b42c92ed75d7ce1506a";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library dlib (http://dlib.net/) in a ROS package, so other packages can use it. The code was obtained from https://github.com/davisking/dlib . For further descriptions and tutorials see the Makefile.tarball and http://dlib.net/ .'';
    license = with lib.licenses; [ boost ];
  };
}
