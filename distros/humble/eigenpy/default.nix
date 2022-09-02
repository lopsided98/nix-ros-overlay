
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-eigenpy";
  version = "2.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/humble/eigenpy/2.7.12-1.tar.gz";
    name = "2.7.12-1.tar.gz";
    sha256 = "d2ad8b6c06eae352497ef0a1d4e37637591167d96a56806329d0e8290d6f3fe7";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
