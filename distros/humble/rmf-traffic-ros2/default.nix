
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, libyamlcpp, rclcpp, rmf-cmake-uncrustify, rmf-fleet-msgs, rmf-traffic, rmf-traffic-msgs, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-ros2";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_traffic_ros2/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "5449c9b3e8b9ce329957c38e1a5689e70315a743ed991762442bfeb3be83db85";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ libyamlcpp rclcpp rmf-fleet-msgs rmf-traffic rmf-traffic-msgs rmf-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package containing messages used by the RMF traffic management system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
