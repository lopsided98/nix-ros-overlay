
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "2.6.11-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/melodic/eigenpy/2.6.11-1.tar.gz";
    name = "2.6.11-1.tar.gz";
    sha256 = "f7d311d01dec93ce128867019ff4d4bb38523bb644a5122a3d9a94e6db28ebca";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
