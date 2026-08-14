
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-bayes, mrpt-common, mrpt-io, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-poses";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_poses/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "4e6c4399d591cf5b8d69d2cff4fe6ac17aa397f9d5da631d921808fd0963851b";
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
