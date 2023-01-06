
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-humble-ompl";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/humble/ompl/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "d0464ab7df4d083205f181c2d7a6916a47f749bcdb962fb7b3d9ea82475845ba";
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
