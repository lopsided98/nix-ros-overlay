
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-eigenpy";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/noetic/eigenpy/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "97f080c09f6bd8bd89245fe09e6e64627b4f780a7e443063f9c89e98e55e59a6";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
