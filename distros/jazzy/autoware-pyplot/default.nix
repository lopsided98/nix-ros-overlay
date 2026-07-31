
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, pybind11-vendor, python-cmake-module, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-autoware-pyplot";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_pyplot/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "3f1032ac25fe5c2dc5f473e16a4b655fc0d451e08130cf99f95fe9ea879ff92b";
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
