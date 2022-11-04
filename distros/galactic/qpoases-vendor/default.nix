
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-galactic-qpoases-vendor";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/Autoware-AI/qpoases_vendor-release/archive/release/galactic/qpoases_vendor/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "ccfecd402a919e2d21c675029594e75d87ab07cd9416983af070ededd2f792c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ subversion ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Wrapper around qpOASES to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 "LGPL" ];
  };
}
