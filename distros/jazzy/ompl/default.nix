
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-ompl";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/jazzy/ompl/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "e565ac9da870df14d9ac4ea6da3b6f9f594d530fd95a59b61f233576e95cb29e";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ode ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
