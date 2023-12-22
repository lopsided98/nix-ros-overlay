
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, nlohmann_json, proj, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-site-map-msgs, rmf-traffic, rmf-traffic-msgs, rmf-utils, util-linux, yaml-cpp, zlib }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-ros2";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_traffic_ros2/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "076164c4044e6dee6e0e298034aa0549cf4b79332d40cc0e5502706fac06eb4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann_json proj rclcpp rmf-building-map-msgs rmf-fleet-msgs rmf-site-map-msgs rmf-traffic rmf-traffic-msgs rmf-utils util-linux yaml-cpp zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package containing messages used by the RMF traffic management system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
