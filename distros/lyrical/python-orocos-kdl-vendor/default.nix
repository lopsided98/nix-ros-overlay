
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, pybind11-vendor, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-python-orocos-kdl-vendor";
  version = "0.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/lyrical/python_orocos_kdl_vendor/0.8.0-3.tar.gz";
    name = "0.8.0-3.tar.gz";
    sha256 = "8771b7647e8c52c4d693081ae7803de61bd721628c54cc0c1ab6e9b66ed02c72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl-vendor pybind11-vendor python3Packages.pykdl ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Wrapper around PyKDL, providing nothing but a dependency on PyKDL on some systems.
    On others, it fetches and builds python_orocos_kdl locally.";
    license = with lib.licenses; [ asl20 "LGPL-2.1-or-later" ];
  };
}
