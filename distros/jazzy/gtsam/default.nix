
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-jazzy-gtsam";
  version = "4.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/jazzy/gtsam/4.2.0-2.tar.gz";
    name = "4.2.0-2.tar.gz";
    sha256 = "6b06372c03a54bcc09e74cb32b8bdfd8b4ba4a144874c8838c12f7d942ab311b";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
