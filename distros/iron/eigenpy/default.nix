
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-iron-eigenpy";
  version = "2.9.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/iron/eigenpy/2.9.2-5.tar.gz";
    name = "2.9.2-5.tar.gz";
    sha256 = "89f59bb17b187fd9729c4bdadee13465f618304d4bf024f620694412bc568aab";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
