
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/melodic/eigenpy/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "3664e366f7ebd962056f104b284f8933eeee40c14a35371a30e6594c0e014959";
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
