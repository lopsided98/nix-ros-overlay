
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, fastrtps-cmake-module, ament-lint-common, ament-cmake, rcpputils, rmw, fastrtps, fastcdr, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rmw-fastrtps-shared-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/eloquent/rmw_fastrtps_shared_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "7212df552909b77e76d146151af108adf44c1a5d865c480a2b193c5b887d25bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils fastrtps-cmake-module rcpputils rmw fastrtps fastcdr ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rcutils fastrtps-cmake-module ament-cmake rcpputils rmw fastrtps fastcdr ];
  nativeBuildInputs = [ fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Code shared on static and dynamic type support of rmw_fastrtps_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
