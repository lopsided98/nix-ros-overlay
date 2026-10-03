
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.3.1-3.tar.gz";
    name = "4.3.1-3.tar.gz";
    sha256 = "d8dbfdef20538d3719d895f50bedd93a6910f6055ae73eec1f891988a1d1c52a";
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
