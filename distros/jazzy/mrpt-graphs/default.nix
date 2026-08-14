
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-io, mrpt-poses, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-graphs";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_graphs/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "89c0b19ed45d4332715286ce93d25e7a53ad14c9557a42df97cbdcb5823274ba";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-io mrpt-poses mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_graphs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
