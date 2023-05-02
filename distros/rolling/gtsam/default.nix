
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.2.0-3.tar.gz";
    name = "4.2.0-3.tar.gz";
    sha256 = "8cb74c4838b879c4180df674122df0b73b1e4e87639b831deae796b661ab5507";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
