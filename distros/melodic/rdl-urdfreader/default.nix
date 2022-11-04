
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lcov, rdl-cmake, rdl-dynamics, roscpp, roslib, urdf }:
buildRosPackage {
  pname = "ros-melodic-rdl-urdfreader";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_urdfreader/3.2.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "acf08d42afc98a4ffb76a16dfc67124f19f3adeb56167f886322019cb3fc83ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ rdl-cmake rdl-dynamics roscpp roslib urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_urdfreader package'';
    license = with lib.licenses; [ "Zlib" ];
  };
}
