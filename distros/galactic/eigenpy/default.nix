
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-eigenpy";
  version = "2.7.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/galactic/eigenpy/2.7.11-2.tar.gz";
    name = "2.7.11-2.tar.gz";
    sha256 = "d7a24ee5388c3976d2dd5d84d224572bac92da1ad91b9c3d7e3f150323885bfb";
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
