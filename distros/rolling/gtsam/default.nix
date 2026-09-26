
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "5528360a3b5591fc8ed8f62491fb8d769960da91e9793a838168ab476617e497";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsd3 bsd3 mpl20 asl20 mpl20 ];
  };
}
