
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, catkin, roslib, roscpp, gtest, lcov, rdl-dynamics, rdl-cmake }:
buildRosPackage {
  pname = "ros-melodic-rdl-urdfreader";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/melodic/rdl_urdfreader/3.2.0-1";
    name = "archive.tar.gz";
    sha256 = "acf08d42afc98a4ffb76a16dfc67124f19f3adeb56167f886322019cb3fc83ee";
  };

  buildType = "catkin";
  buildInputs = [ urdf roslib roscpp rdl-cmake rdl-dynamics ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ urdf roslib roscpp rdl-cmake rdl-dynamics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_urdfreader package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
