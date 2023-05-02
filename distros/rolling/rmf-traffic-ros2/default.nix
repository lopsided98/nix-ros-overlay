
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, libyamlcpp, nlohmann_json, proj, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-site-map-msgs, rmf-traffic, rmf-traffic-msgs, rmf-utils, util-linux, zlib }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-ros2";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_traffic_ros2/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "3e899780dd0d6ba088e2a0e6cb6e43eea8243b4f6516a234984c54e9f59bcdcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ libyamlcpp nlohmann_json proj rclcpp rmf-building-map-msgs rmf-fleet-msgs rmf-site-map-msgs rmf-traffic rmf-traffic-msgs rmf-utils util-linux zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package containing messages used by the RMF traffic management system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
