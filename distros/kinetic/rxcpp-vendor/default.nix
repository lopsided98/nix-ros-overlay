
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rxcpp-vendor";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/rxcpp_vendor-release/archive/release/kinetic/rxcpp_vendor/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "000cd80deaf4f70afca8c759ac0efcb44874bac565006374112b30cbea8a1da3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A vendor package for RxCpp'';
    license = with lib.licenses; [ asl20 ];
  };
}
