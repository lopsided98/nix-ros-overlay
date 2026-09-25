
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-lyrical-gtsam";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/lyrical/gtsam/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "e0ed90012dc41404d99df15db43fea1e8a166c21a843c32bd15234fb89e2ff63";
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
