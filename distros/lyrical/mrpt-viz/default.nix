
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, mrpt-common, mrpt-img, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-viz";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_viz/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "18540cb0a9a3b63e77c0c5a9f7087cf97a16fdea6432d4773a79019eb2310b34";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-img mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_viz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
