
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, pybind11-vendor, python-cmake-module, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-python-orocos-kdl-vendor";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/rolling/python_orocos_kdl_vendor/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "d9c9d653ede34aff51cde22730d620123410c24553f826fcb600b3cc869a4277";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl-vendor pybind11-vendor python3Packages.pykdl ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = "Wrapper around PyKDL, providing nothing but a dependency on PyKDL on some systems.
    On others, it fetches and builds python_orocos_kdl locally.";
    license = with lib.licenses; [ asl20 "LGPL-2.1-or-later" ];
  };
}
