
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-core";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_core/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "073568f570ddd870f00a7aee803bf44a32d207aa3b7336886c47ffd31a86cb0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Lanelet2 core module";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
