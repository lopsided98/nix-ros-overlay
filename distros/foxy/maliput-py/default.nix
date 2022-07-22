
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-pytest, maliput, python3, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-maliput-py";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_py-release/archive/release/foxy/maliput_py/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2bc757970ac2532515772d7a2f7494c43938c8e36ee7a3281a61da6c8b9b49a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ python3 ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-flake8 ament-cmake-pytest ];
  propagatedBuildInputs = [ maliput pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput bindings'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
