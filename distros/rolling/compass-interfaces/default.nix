
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cras-cpp-common, cras-lint, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-compass-interfaces";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/rolling/compass_interfaces/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "d1d0b7f2e3e4dec2338412c404015779b31bd186ee6af0b1966eef0cc2535b86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest cras-lint ];
  propagatedBuildInputs = [ cras-cpp-common rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages related to compass";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
