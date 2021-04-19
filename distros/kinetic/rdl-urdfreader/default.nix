
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, lcov, rdl-cmake, rdl-dynamics, roscpp, roslib, urdf }:
buildRosPackage {
  pname = "ros-kinetic-rdl-urdfreader";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/kinetic/rdl_urdfreader/1.1.0-0/rdl_release-release-kinetic-rdl_urdfreader-1.1.0-0.tar.gz";
    name = "rdl_release-release-kinetic-rdl_urdfreader-1.1.0-0.tar.gz";
    sha256 = "56c2b84e35909fa309d7a5167864bf978a22554a26b0311d6c30d35589b9b7f5";
  };

  buildType = "catkin";
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ rdl-cmake rdl-dynamics roscpp roslib urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_urdfreader package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
