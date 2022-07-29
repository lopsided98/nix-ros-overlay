
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-pytest, maliput, python3, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-maliput-py";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_py-release/archive/release/foxy/maliput_py/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "f26d74e39bd5e61c0bcc61aabaa0816372914296d998c00e03601bbf5ee53367";
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
