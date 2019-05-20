
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, gtest, catkin, rdl-dynamics, lcov, roslib, urdf, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rdl-urdfreader";
  version = "3.2.0-r1";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/melodic/rdl_urdfreader/3.2.0-1;
    sha256 = "acf08d42afc98a4ffb76a16dfc67124f19f3adeb56167f886322019cb3fc83ee";
  };

  buildInputs = [ rdl-cmake rdl-dynamics roscpp urdf roslib ];
  checkInputs = [ lcov gtest ];
  propagatedBuildInputs = [ rdl-cmake rdl-dynamics roscpp urdf roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_urdfreader package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
