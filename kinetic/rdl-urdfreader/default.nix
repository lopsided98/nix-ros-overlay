
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, gtest, catkin, rdl-dynamics, lcov, roslib, urdf, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rdl-urdfreader";
  version = "1.1.0";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_urdfreader/1.1.0-0;
    sha256 = "44a776b10b02d4faef56d3f77df5eb31ad2f4f9424255247823ab4499d3442c5";
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
