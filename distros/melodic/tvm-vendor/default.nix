
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, libxml2, llvm, openblas, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-tvm-vendor";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/tvm_vendor-release/archive/release/melodic/tvm_vendor/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "76243a88db420c6c4c2a9849f4e1a47adcb7c51f40ca9ae6daa88fcbbb7c80b3";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ git libxml2 llvm openblas ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around Apache TVM to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
