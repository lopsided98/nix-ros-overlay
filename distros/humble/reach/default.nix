
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, boost-plugin-loader, cmake, eigen, gtest, llvmPackages, pcl, ros-industrial-cmake-boilerplate, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-reach";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reach-release/archive/release/humble/reach/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "666dde128046d8dcf25a3ab93326af933333e2800c7b64ce8b0ad34a9a86adc2";
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
