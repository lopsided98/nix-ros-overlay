
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-bayes, mrpt-common, mrpt-io, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-poses";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_poses/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "0d53bf9dbd10ce47cf3b8ccbdb869ed745fa8f2ba524e1069cc479a45ed18b7f";
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
