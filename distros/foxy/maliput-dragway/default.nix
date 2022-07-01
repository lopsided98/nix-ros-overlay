
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-pytest, maliput, maliput-py, pybind11, python3 }:
buildRosPackage {
  pname = "ros-foxy-maliput-dragway";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_dragway-release/archive/release/foxy/maliput_dragway/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "748dd0110dc11469dc428ebc8d18e9262ee8f3b528be3b9f945bcdd8bb0c6d21";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ maliput maliput-py pybind11 python3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Dragway.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
