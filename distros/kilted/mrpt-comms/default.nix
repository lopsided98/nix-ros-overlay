
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libftdi1, mrpt-common, mrpt-io, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-comms";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_comms/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "8977df6b006a47639f8f5c91ea3e53f71aa7001afa5f8044b90e04e42c25cbd7";
  };

  buildType = "cmake";
  buildInputs = [ cmake libftdi1 python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-poses ];
  propagatedBuildInputs = [ mrpt-common mrpt-io ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_comms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
