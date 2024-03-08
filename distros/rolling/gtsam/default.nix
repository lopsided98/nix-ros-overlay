
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.2.0-5.tar.gz";
    name = "4.2.0-5.tar.gz";
    sha256 = "5f3d245121dfaabe41ad16c0e78e944ea71895c8f5de8da617a199a08ce48c09";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
