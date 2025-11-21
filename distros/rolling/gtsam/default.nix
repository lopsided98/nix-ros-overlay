
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.3.0-3.tar.gz";
    name = "4.3.0-3.tar.gz";
    sha256 = "ea545f2cca1cdeb9c7f339377205e916eb7cc630f2e39981696336cd71295740";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsd3 bsd3 bsd3 mpl20 asl20 mpl20 ];
  };
}
