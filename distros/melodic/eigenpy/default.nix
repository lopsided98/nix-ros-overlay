
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/melodic/eigenpy/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "bbe6d7a79f7f3c5e3f2025cc9b820ca878e0931f604227f8b84c61bdf27bb353";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
