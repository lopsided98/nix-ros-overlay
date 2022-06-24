
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-pytest, maliput-object, pybind11, python3 }:
buildRosPackage {
  pname = "ros-foxy-maliput-object-py";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_object_py-release/archive/release/foxy/maliput_object_py/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ea15fa26b9356f0634a11133d38b71c877ee6c147a0d30861a8df91ec005e5c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ python3 ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-flake8 ament-cmake-pytest ];
  propagatedBuildInputs = [ maliput-object pybind11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Object bindings'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
