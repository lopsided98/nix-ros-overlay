
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, boost-plugin-loader, cmake, eigen, gtest, llvmPackages, pcl, ros-industrial-cmake-boilerplate, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-reach";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reach-release/archive/release/humble/reach/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "f24ae9d69dd24d6a0bf49eebc743a7b769eb0ba1657c3264e197a685d294e4e5";
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
