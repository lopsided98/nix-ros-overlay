
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, boost-plugin-loader, cmake, eigen, gtest, llvmPackages, pcl, ros-industrial-cmake-boilerplate, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-reach";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reach-release/archive/release/noetic/reach/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "4055142acd4239e1435e9ed32e8ce84fd49207f2167baac80b9b3d49f3b0060c";
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
