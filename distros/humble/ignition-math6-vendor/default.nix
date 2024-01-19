
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, eigen, git, ignition, ignition-cmake2-vendor }:
buildRosPackage {
  pname = "ros-humble-ignition-math6-vendor";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_math6_vendor-release/archive/release/humble/ignition_math6_vendor/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "829ad291e00604ebe981322945ce10f2666e3886dc53048af053d52ad79fc239";
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
