
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-yaml, mrpt-maps, mrpt-obs, mrpt-topography }:
buildRosPackage {
  pname = "ros-kilted-mola-kernel";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_kernel/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "44bf08a8b03dc4012d7208872330389e5769aa739ecc93cfd95c4ca92a83f531";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt-maps mrpt-obs mrpt-topography ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Fundamental C++ virtual interfaces and data types for the rest of MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
