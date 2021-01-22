
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, openblas, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-tvm-vendor";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/tvm_vendor-release/archive/release/foxy/tvm_vendor/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "2a2ba61698d6960439e893ad16fa2167426888116871fae1840059c302c8f21b";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ git libxml2 openblas ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around Apache TVM to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
