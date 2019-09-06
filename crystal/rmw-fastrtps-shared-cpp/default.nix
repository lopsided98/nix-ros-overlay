
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, fastrtps, ament-cmake-ros, fastcdr, ament-lint-auto, rcutils, fastrtps-cmake-module, rmw }:
buildRosPackage {
  pname = "ros-crystal-rmw-fastrtps-shared-cpp";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/crystal/rmw_fastrtps_shared_cpp/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "e1621ea08ed960bcb88359e26b1a805dc3c233c5edebe3964e8a4a263cfc6422";
  };

  buildType = "ament_cmake";
  buildInputs = [ fastrtps fastcdr rcutils fastrtps-cmake-module rmw ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastrtps fastcdr rcutils fastrtps-cmake-module rmw ];
  nativeBuildInputs = [ fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Code shared on static and dynamic type support of rmw_fastrtps_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
