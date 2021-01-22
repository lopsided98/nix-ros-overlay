
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, openblas, ros-environment }:
buildRosPackage {
  pname = "ros-dashing-tvm-vendor";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/tvm_vendor-release/archive/release/dashing/tvm_vendor/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "94b8bfc17e0658113e8b139ed96db91564691a4ecf6243e2702c95d61673f1cb";
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
