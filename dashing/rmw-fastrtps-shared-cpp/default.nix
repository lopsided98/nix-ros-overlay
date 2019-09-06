
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcpputils, ament-cmake, ament-lint-common, fastrtps, ament-cmake-ros, fastcdr, ament-lint-auto, rcutils, fastrtps-cmake-module, rmw }:
buildRosPackage {
  pname = "ros-dashing-rmw-fastrtps-shared-cpp";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_shared_cpp/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "f7177da79724bb9d03be502d9121550060a80d7a3f0ee01dbc3fdc71ce037707";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils fastrtps fastcdr rcutils fastrtps-cmake-module rmw ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils ament-cmake fastrtps fastcdr rcutils fastrtps-cmake-module rmw ];
  nativeBuildInputs = [ fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Code shared on static and dynamic type support of rmw_fastrtps_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
