
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, tobas-algorithm, tobas-math, tobas-time-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-tools";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_tools/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "0c19160837b6b30ff5fea6b61ab5e54a54cfa8999efaa94d1acf39f71f6fd24b";
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
