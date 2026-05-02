
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.3.0-4.tar.gz";
    name = "4.3.0-4.tar.gz";
    sha256 = "f7e36da66b3f952209db56b33753026a4109080c12425eac1649096551171a46";
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
