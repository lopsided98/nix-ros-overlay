
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-iron-ompl";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/iron/ompl/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "e78ab8a4413442fcf58ca1a4a101c54ddd270d7994c5dc8a615191aed8e80ae0";
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
