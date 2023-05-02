
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-pytest, gflags, libyamlcpp, maliput, maliput-dragway, maliput-malidrive, maliput-multilane, maliput-object, maliput-osm, maliput-py, maliput-sparse }:
buildRosPackage {
  pname = "ros-foxy-maliput-integration";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_integration-release/archive/release/foxy/maliput_integration/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "2557de2b5ccec63cd2363446c0561c156b0f0b14a09e0d04082608bd48e06a39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-flake8 ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ gflags libyamlcpp maliput maliput-dragway maliput-malidrive maliput-multilane maliput-object maliput-osm maliput-py maliput-sparse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Integration.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
