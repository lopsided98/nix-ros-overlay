
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp, maliput }:
buildRosPackage {
  pname = "ros-foxy-maliput-object";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_object-release/archive/release/foxy/maliput_object/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "f45fa4db39dd785b45e8676924007534472e63590d1cc2ba5c2ef2c67ffd5e48";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt gflags libyamlcpp maliput ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Object'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
