
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, pybind11-vendor, python-cmake-module, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-python-orocos-kdl-vendor";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/rolling/python_orocos_kdl_vendor/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "c8f240180a6a91002f6fd6b72cec8ffa34f96ef0b5a9a4800ccc1214b541bbd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl-vendor pybind11-vendor python3Packages.pykdl ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = ''Wrapper around PyKDL, providing nothing but a dependency on PyKDL on some systems.
    On others, it fetches and builds python_orocos_kdl locally.'';
    license = with lib.licenses; [ asl20 "LGPL-2.1-or-later" ];
  };
}
