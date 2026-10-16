
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-typemeta";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_typemeta/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "3c1bf12ca1cae9dd0eb1f392b96b0134aca29974b6fb8f1ba0c6846d0df3825c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_typemeta";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
