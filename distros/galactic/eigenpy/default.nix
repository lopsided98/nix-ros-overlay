
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-eigenpy";
  version = "2.7.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/galactic/eigenpy/2.7.10-2.tar.gz";
    name = "2.7.10-2.tar.gz";
    sha256 = "48edca79168f111e2855d32e4b11805eafedae309c3ea7bd5909c6b12bd1a6c3";
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
