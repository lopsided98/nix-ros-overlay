
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, pybind11-vendor, python-cmake-module, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-autoware-pyplot";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_pyplot/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "0442ea132d9de70f6971acc432f50f3bceff558deb122e568b88fdc2a7d0aea3";
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
