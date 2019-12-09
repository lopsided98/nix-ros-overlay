
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, fastrtps-cmake-module, ament-lint-common, ament-cmake, rmw, fastrtps, fastcdr, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rmw-fastrtps-shared-cpp";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/crystal/rmw_fastrtps_shared_cpp/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "e1621ea08ed960bcb88359e26b1a805dc3c233c5edebe3964e8a4a263cfc6422";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils fastrtps-cmake-module rmw fastrtps fastcdr ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rcutils fastrtps-cmake-module ament-cmake rmw fastrtps fastcdr ];
  nativeBuildInputs = [ fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Code shared on static and dynamic type support of rmw_fastrtps_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
