
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-pytest, maliput, python3, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-maliput-py";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_py-release/archive/release/foxy/maliput_py/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "5991d3f0c949a3470a7cc4861bda6dd186c37b51c92a15ceab00c2246d9b645c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3 ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-flake8 ament-cmake-pytest ];
  propagatedBuildInputs = [ maliput pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput bindings'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
