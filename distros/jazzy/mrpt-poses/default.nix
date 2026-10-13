
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-bayes, mrpt-common, mrpt-io, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-poses";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_poses/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "d00cb457131ce9294acaa79d35b754a2e805f40dc5a891cba7c635c7da975642";
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
