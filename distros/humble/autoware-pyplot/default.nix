
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, pybind11-vendor, python-cmake-module, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-autoware-pyplot";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_pyplot/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "4093ea793be53a7611d75c380590efce1b1ccfb34b30a5397db32b6a05f2f81d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ pybind11-vendor python3 python3Packages.matplotlib ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];

  meta = {
    description = "C++ interface for matplotlib based on pybind11";
    license = with lib.licenses; [ asl20 ];
  };
}
