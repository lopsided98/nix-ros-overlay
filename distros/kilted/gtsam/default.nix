
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-kilted-gtsam";
  version = "4.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/kilted/gtsam/4.3.0-3.tar.gz";
    name = "4.3.0-3.tar.gz";
    sha256 = "fcf6033907ed5813c2ee1de3c3b43a770bd96ba1a3438ea9809374d296284f1a";
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
