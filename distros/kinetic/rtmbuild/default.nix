
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, cmake-modules, liblapack, message-generation, message-runtime, omniorb, openrtm-aist, openrtm-aist-python, pkg-config, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtmbuild";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/rtmbuild/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "f1b6875c8899df1fa9d07b2ebb2c9ed25bf88e76b8bb38840d6dddb41f4342ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ blas cmake-modules liblapack message-generation message-runtime omniorb openrtm-aist openrtm-aist-python pkg-config rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Build scripts for OpenRTM and OpenHRP'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
