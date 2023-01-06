
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "fd6f7eca75d22aae6fd64709ef9d8bffe4a76e67b1fa53de42d93c789828088b";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ode ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
