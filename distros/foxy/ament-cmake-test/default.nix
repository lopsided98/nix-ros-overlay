
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-test";
  version = "0.9.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_test/0.9.10-1.tar.gz";
    name = "0.9.10-1.tar.gz";
    sha256 = "662b122754c40355ab418cb01c4256cb3d74951a4673c9dc78aae89a78bd288f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = ''The ability to add tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
