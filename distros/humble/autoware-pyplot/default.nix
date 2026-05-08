
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, pybind11-vendor, python-cmake-module, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-autoware-pyplot";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_pyplot/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "38dd3fb6059048f2eceafcd8b3079175d73a9efce559e27494e2941dfb39948b";
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
