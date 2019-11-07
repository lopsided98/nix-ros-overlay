
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, python3, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-python-cmake-module";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/python_cmake_module/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "68b3ac14449704ae48d35abaa197e2096a2b218ce8395abe6f93c3fc14f4a19b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module with extra functionality for Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
