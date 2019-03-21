
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, omniorb, catkin, blas, pkg-config, liblapack, rostest, message-generation, openrtm-aist-python, openrtm-aist, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtmbuild";
  version = "1.4.2";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/rtmbuild/1.4.2-0.tar.gz;
    sha256 = "f1b6875c8899df1fa9d07b2ebb2c9ed25bf88e76b8bb38840d6dddb41f4342ef";
  };

  propagatedBuildInputs = [ cmake-modules omniorb blas pkg-config liblapack rostest message-generation openrtm-aist-python openrtm-aist message-runtime std-msgs ];
  nativeBuildInputs = [ cmake-modules omniorb catkin pkg-config rostest message-generation openrtm-aist-python openrtm-aist std-msgs ];

  meta = {
    description = ''Build scripts for OpenRTM and OpenHRP'';
    #license = lib.licenses.BSD;
  };
}
