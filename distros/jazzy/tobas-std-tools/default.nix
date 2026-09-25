
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, tobas-algorithm, tobas-math, tobas-time-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ec09c9665eca2879947ae0249eaa6f0cac670a9715251eb260f868fff421a653";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  propagatedBuildInputs = [ tobas-algorithm tobas-math tobas-time-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Library containing basic functionality comparable to extensions of the standard library.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
