
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, backward-ros, eigen, nlohmann_json, proj, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-reservation-msgs, rmf-site-map-msgs, rmf-traffic, rmf-traffic-msgs, rmf-utils, util-linux, yaml-cpp, zlib }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-ros2";
  version = "2.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_traffic_ros2/2.12.0-3.tar.gz";
    name = "2.12.0-3.tar.gz";
    sha256 = "a8a175937473279e41ea8dcbc5ec0a5b43e6bbff868ad442e10ba745f2ec8736";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ backward-ros nlohmann_json proj rclcpp rmf-building-map-msgs rmf-fleet-msgs rmf-reservation-msgs rmf-site-map-msgs rmf-traffic rmf-traffic-msgs rmf-utils util-linux yaml-cpp zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package containing messages used by the RMF traffic management system.";
    license = with lib.licenses; [ asl20 ];
  };
}
