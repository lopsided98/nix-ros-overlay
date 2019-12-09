
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, fastrtps-cmake-module, ament-lint-common, ament-cmake, rcpputils, rmw, fastrtps, fastcdr, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rmw-fastrtps-shared-cpp";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_shared_cpp/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "1aae2bed65ab79759edd67f5763f0a9d4e6bf06ebc656214006588da49336ddf";
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
