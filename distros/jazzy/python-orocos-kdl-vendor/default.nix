
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, pybind11-vendor, python-cmake-module, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-python-orocos-kdl-vendor";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/jazzy/python_orocos_kdl_vendor/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "4f6933d9ebfb284d4e32478a933ad191fef2e41deb9e3827e06fd7262039264a";
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
