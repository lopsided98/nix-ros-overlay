
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, boost-plugin-loader, cmake, eigen, gtest, llvmPackages, pcl, ros-industrial-cmake-boilerplate, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-reach";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reach-release/archive/release/noetic/reach/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "d245fd2ce71a1457aec8e2cb0974be0f2cf5f8c93fb55589fb5f03b6203b41a2";
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
