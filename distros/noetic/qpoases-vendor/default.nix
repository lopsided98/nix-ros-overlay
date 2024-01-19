
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, subversion }:
buildRosPackage {
  pname = "ros-noetic-qpoases-vendor";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/qpoases_vendor-release/archive/release/noetic/qpoases_vendor/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "e4c533716e760bbd1a5f5c9170e3ad8f34968fa70fa88ca860fd6235fe6697ab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ subversion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around qpOASES to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 "LGPL" ];
  };
}
