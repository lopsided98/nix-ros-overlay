
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-pytest, maliput-object, python3, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-maliput-object-py";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_object_py-release/archive/release/foxy/maliput_object_py/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "eddd031f0f260c2e51ded66c6c1d42d0cd63e54efb13685076c18ba0bd071844";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3 ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-flake8 ament-cmake-pytest ];
  propagatedBuildInputs = [ maliput-object pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Object bindings'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
