
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, omniorb, liblapack, openrtm-aist-python, std-msgs, cmake-modules, catkin, openrtm-aist, blas, pkg-config, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rtmbuild";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/rtmbuild/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "f1b6875c8899df1fa9d07b2ebb2c9ed25bf88e76b8bb38840d6dddb41f4342ef";
  };

  buildType = "catkin";
  buildInputs = [ omniorb openrtm-aist-python std-msgs cmake-modules openrtm-aist pkg-config message-generation rostest ];
  propagatedBuildInputs = [ omniorb liblapack message-runtime openrtm-aist-python std-msgs cmake-modules openrtm-aist blas pkg-config message-generation rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Build scripts for OpenRTM and OpenHRP'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
