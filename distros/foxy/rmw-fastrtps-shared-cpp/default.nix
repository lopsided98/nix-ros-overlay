
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common }:
buildRosPackage {
  pname = "ros-foxy-rmw-fastrtps-shared-cpp";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/foxy/rmw_fastrtps_shared_cpp/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b7f2c1491048fc74a05d4be7dbf7b6a36e8cd487107696252f09f386d36565a5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = ''Code shared on static and dynamic type support of rmw_fastrtps_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
