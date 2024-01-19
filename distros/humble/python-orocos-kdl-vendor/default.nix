
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, pybind11-vendor, python-cmake-module, python3Packages }:
buildRosPackage {
  pname = "ros-humble-python-orocos-kdl-vendor";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/humble/python_orocos_kdl_vendor/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "208253399ff93657753b2afd347c8b8a9b6d7e74a6a79518ae3085f52033a8a1";
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
