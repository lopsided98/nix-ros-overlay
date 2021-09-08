
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, libyamlcpp, rclcpp, rmf-cmake-uncrustify, rmf-fleet-msgs, rmf-traffic, rmf-traffic-msgs, rmf-utils }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic-ros2";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/galactic/rmf_traffic_ros2/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "45e812e3166caace2b41583a3b675884eb1690785db316f1429c33eadc7ce0c0";
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
