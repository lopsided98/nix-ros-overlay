
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common }:
buildRosPackage {
  pname = "ros-foxy-rmw-fastrtps-shared-cpp";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/foxy/rmw_fastrtps_shared_cpp/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "8502eda9ac05734b877d92d1a1385976d965dd78d4668cc1f749c3ddda12d96f";
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
