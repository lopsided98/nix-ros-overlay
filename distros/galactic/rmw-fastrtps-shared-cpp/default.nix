
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common }:
buildRosPackage {
  pname = "ros-galactic-rmw-fastrtps-shared-cpp";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/galactic/rmw_fastrtps_shared_cpp/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "12d2040394528d815d9e99a50b9ca48618a24a860585edea804c9cc786fd35d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = ''Code shared on static and dynamic type support of rmw_fastrtps_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
