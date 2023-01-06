
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-pytest, maliput, maliput-py, python3, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-maliput-dragway";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_dragway-release/archive/release/foxy/maliput_dragway/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "cc347a1c58da21b7e55b1e9f10b68da0d7bce79628cbb1f8794bde2c0d2076a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ maliput maliput-py python3 pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Dragway.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
