
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libftdi1, mrpt-common, mrpt-io, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-comms";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_comms/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "935f1725609791c24def8b965dc9b06fed6c1efa22055a9c5662dc548a95424c";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-poses ];
  propagatedBuildInputs = [ libftdi1 mrpt-common mrpt-io ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_comms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
