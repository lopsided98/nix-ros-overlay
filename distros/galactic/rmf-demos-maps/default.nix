
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-maps";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_maps/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "757b5ac22ce063c86bc94e309fca78a10a573a066c9380fa778cb69e19dc6ff7";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''A package containing demo maps for rmf'';
    license = with lib.licenses; [ asl20 ];
  };
}
