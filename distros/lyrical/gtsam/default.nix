
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-lyrical-gtsam";
  version = "4.3.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/lyrical/gtsam/4.3.0-5.tar.gz";
    name = "4.3.0-5.tar.gz";
    sha256 = "62613a535b8837779aefcf99ecde403169a3df25a7d0b4b43463aa24c1aadf28";
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
