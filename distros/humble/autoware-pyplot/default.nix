
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, pybind11-vendor, python-cmake-module, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-autoware-pyplot";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_pyplot/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7651e51366e3249907e8f43ade85aab0a440ce2bc49161d8e571116934437db7";
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
