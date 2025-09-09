
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-kilted-gtsam";
  version = "4.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/kilted/gtsam/4.3.0-2.tar.gz";
    name = "4.3.0-2.tar.gz";
    sha256 = "fdce2fdc1e8be1078beea7ed904af18786f764d9c65bafd973f16c7a551f70be";
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
