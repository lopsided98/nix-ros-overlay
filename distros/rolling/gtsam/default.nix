
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.2.0-6.tar.gz";
    name = "4.2.0-6.tar.gz";
    sha256 = "b610335f684dd308be6ac3bd791d0ab26b81c64a87206f9cf583751332cd6ad0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen tbb_2021_11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
