
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-pytest, maliput, maliput-py, python3, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-maliput-dragway";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_dragway-release/archive/release/foxy/maliput_dragway/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "cd69db9752c89e4be9eaea375ea99960bcdd28b3c4a5541d239f14aebd9c840b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ maliput maliput-py python3 pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Dragway.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
