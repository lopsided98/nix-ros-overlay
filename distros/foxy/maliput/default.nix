
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp }:
buildRosPackage {
  pname = "ros-foxy-maliput";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput-release/archive/release/foxy/maliput/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "02071a4e53c7fe14386ca99407151aec18698093e2b87af47263ac5bb3991f4a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt gflags libyamlcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
