
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, eigen, git, ignition, ignition-cmake2-vendor }:
buildRosPackage {
  pname = "ros-iron-ignition-math6-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_math6_vendor-release/archive/release/iron/ignition_math6_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "4a238731e4055801c7b4fc2ac539f986b40153b4a1b22c7d638078371c1a2706";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-test cmake eigen git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ignition-cmake2-vendor ignition.math6 ];
  nativeBuildInputs = [ ament-cmake-test cmake git ];

  meta = {
    description = ''This package provides the Ignition Math 6.x library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
