
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-pytest, ament-cmake-test, ament-copyright, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-dashing-launch-testing-ament-cmake";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch_testing_ament_cmake/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "adf1e94a1e4c918eac9fac7520c315401d525e6b5336ce18ad99e8ac28a92aef";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-copyright ];
  propagatedBuildInputs = [ ament-cmake-test launch-testing python-cmake-module ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package providing cmake functions for running launch tests from the build.'';
    license = with lib.licenses; [ asl20 ];
  };
}
