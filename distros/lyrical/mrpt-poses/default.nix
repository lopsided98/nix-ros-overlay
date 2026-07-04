
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-bayes, mrpt-common, mrpt-io, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-poses";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_poses/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a02a7c17eb82edaa31b8463e425c103580c1e58558286d70e844d8d0e784b5af";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-io ];
  propagatedBuildInputs = [ mrpt-bayes mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_poses";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
