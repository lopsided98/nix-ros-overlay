
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "2.7.7-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/melodic/eigenpy/2.7.7-1.tar.gz";
    name = "2.7.7-1.tar.gz";
    sha256 = "527591d8fc3c0c759a54e72db95fab3ce9d10e53701ee72ff086819d53c760cb";
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
