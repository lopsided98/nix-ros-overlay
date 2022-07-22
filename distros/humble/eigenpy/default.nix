
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-eigenpy";
  version = "2.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/humble/eigenpy/2.7.7-1.tar.gz";
    name = "2.7.7-1.tar.gz";
    sha256 = "06634b9f4d5f5be07ced394692443ddd5cfa5e4952ace4a1f99988e9d9859b39";
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
