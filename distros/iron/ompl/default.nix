
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-iron-ompl";
  version = "1.5.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/iron/ompl/1.5.2-4.tar.gz";
    name = "1.5.2-4.tar.gz";
    sha256 = "a636979adcd6c967d8d98b95447e2846a29415f95f4da19a6f74c5860508bf5a";
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
