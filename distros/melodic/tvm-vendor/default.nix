
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, libxml2, openblas, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-tvm-vendor";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/tvm_vendor-release/archive/release/melodic/tvm_vendor/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "511a053350273ffa7480269d5730915ca32972142ae9894be91b1690cfadd378";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ git libxml2 openblas ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around Apache TVM to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
