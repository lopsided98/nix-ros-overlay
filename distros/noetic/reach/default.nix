
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, boost-plugin-loader, cmake, eigen, gtest, llvmPackages, pcl, ros-industrial-cmake-boilerplate, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-reach";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reach-release/archive/release/noetic/reach/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "d964980c543134ce0e38fc522819379c539c764f60c4b8252c7a690ba8ce4265";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost boost-plugin-loader eigen llvmPackages.openmp pcl ros-industrial-cmake-boilerplate yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The reach package'';
    license = with lib.licenses; [ asl20 ];
  };
}
