
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, backward-ros, eigen, nlohmann_json, proj, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-reservation-msgs, rmf-site-map-msgs, rmf-traffic, rmf-traffic-msgs, rmf-utils, util-linux, yaml-cpp, zlib }:
buildRosPackage {
  pname = "ros-kilted-rmf-traffic-ros2";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/kilted/rmf_traffic_ros2/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "0ad9a373c70cfbd5217d1c5faba844c45b127408cc978fcae2d8497135c6f56b";
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
