
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, libyamlcpp, rclcpp, rmf-cmake-uncrustify, rmf-fleet-msgs, rmf-traffic, rmf-traffic-msgs, rmf-utils }:
buildRosPackage {
  pname = "ros-foxy-rmf-traffic-ros2";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/foxy/rmf_traffic_ros2/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "274a86e3e71c8913cb39c37b6768dd007bfb144f46f7141afb62e17d8fbf7d4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ libyamlcpp rclcpp rmf-fleet-msgs rmf-traffic rmf-traffic-msgs rmf-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package containing messages used by the RMF traffic management system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
