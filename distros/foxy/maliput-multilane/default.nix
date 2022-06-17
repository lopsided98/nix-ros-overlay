
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, libyamlcpp, maliput, maliput-drake }:
buildRosPackage {
  pname = "ros-foxy-maliput-multilane";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_multilane-release/archive/release/foxy/maliput_multilane/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "527698d08a50d9a49c0d3382e62f2854ebb5e02dee52873dfd3668f25c16e55f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt libyamlcpp maliput maliput-drake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Multilane.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
