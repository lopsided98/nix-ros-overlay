
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-jazzy-gtsam";
  version = "4.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/jazzy/gtsam/4.2.0-3.tar.gz";
    name = "4.2.0-3.tar.gz";
    sha256 = "57e51516de0f7abfc08c5898559a3573097a494f215489c5f9e3ee6e1a87d16b";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb_2021_11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
