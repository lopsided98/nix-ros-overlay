
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-kilted-gtsam";
  version = "4.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/kilted/gtsam/4.3.1-2.tar.gz";
    name = "4.3.1-2.tar.gz";
    sha256 = "23aa40ef1abbdb1dcbbc646dbc45b6551aae2f5498aca45c96efb942a9504128";
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
