
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-libmavconn";
  version = "2.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/jazzy/libmavconn/2.6.0-3.tar.gz";
    name = "2.6.0-3.tar.gz";
    sha256 = "32a9289ee47a1e1456ac2fc1c3a033770b07216f7802b49927a7aa8642536c78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.empy ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio console-bridge mavlink ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
