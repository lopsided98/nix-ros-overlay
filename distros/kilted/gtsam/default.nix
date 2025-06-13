
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-kilted-gtsam";
  version = "4.2.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/kilted/gtsam/4.2.0-7.tar.gz";
    name = "4.2.0-7.tar.gz";
    sha256 = "6d4548096009784e088ac7cebf0e7008b316e802f7f2771fe3d032ad52385115";
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
