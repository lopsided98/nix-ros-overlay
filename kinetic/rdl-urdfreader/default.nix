
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, catkin, roslib, roscpp, gtest, lcov, rdl-dynamics, rdl-cmake }:
buildRosPackage {
  pname = "ros-kinetic-rdl-urdfreader";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_urdfreader/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "44a776b10b02d4faef56d3f77df5eb31ad2f4f9424255247823ab4499d3442c5";
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
