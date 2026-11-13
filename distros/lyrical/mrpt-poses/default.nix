
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-bayes, mrpt-common, mrpt-io, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-poses";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_poses/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "cd1128a3d4ca4dceb2f4904db63eaf3ddd5a92a645cc1fbd5a7b549bfeeb15c4";
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
