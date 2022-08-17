
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-pytest, gflags, libyamlcpp, maliput, maliput-dragway, maliput-malidrive, maliput-multilane, maliput-object, maliput-py }:
buildRosPackage {
  pname = "ros-foxy-maliput-integration";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_integration-release/archive/release/foxy/maliput_integration/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "bfe61831578011ebad7a133288d3c4793af965447b4707e0752cec020c977e33";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-flake8 ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ gflags libyamlcpp maliput maliput-dragway maliput-malidrive maliput-multilane maliput-object maliput-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Integration.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
