
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing }:
buildRosPackage {
  pname = "ros-lyrical-launch-testing-ament-cmake";
  version = "3.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/lyrical/launch_testing_ament_cmake/3.9.8-1.tar.gz";
    name = "3.9.8-1.tar.gz";
    sha256 = "e6403a8f61f5e0c3b9d2c7cd763ac28127a3a4f21779d608f6e8fe7416b9751c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright launch-testing ];
  propagatedBuildInputs = [ ament-cmake-test launch-testing ];
  nativeBuildInputs = [ ament-cmake ament-cmake-test launch-testing ];

  meta = {
    description = "A package providing cmake functions for running launch tests from the build.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
