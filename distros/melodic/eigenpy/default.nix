
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "2.7.11-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/melodic/eigenpy/2.7.11-1.tar.gz";
    name = "2.7.11-1.tar.gz";
    sha256 = "844ba74addb63ecf579bae07fdf3084729d0245193e70b4f881987c594fb7e15";
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
