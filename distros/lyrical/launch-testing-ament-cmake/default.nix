
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing }:
buildRosPackage {
  pname = "ros-lyrical-launch-testing-ament-cmake";
  version = "3.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/lyrical/launch_testing_ament_cmake/3.9.9-1.tar.gz";
    name = "3.9.9-1.tar.gz";
    sha256 = "54878c9c9cbb7384dcec9dfe07ca72f62e8efd443194a63f6186fe8ec0e8b76b";
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
