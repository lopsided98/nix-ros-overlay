
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.3.0-2.tar.gz";
    name = "4.3.0-2.tar.gz";
    sha256 = "5133ee9b6b17f1ff1c017d8e46b2978f9059d1d17a2c29378936bdaafcea446b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen tbb_2021_11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsd3 bsd3 bsd3 mpl20 mit asl20 mpl20 ];
  };
}
