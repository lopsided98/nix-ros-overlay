
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, marti-common-msgs, marti-nav-msgs, rclcpp, swri-geometry-util, swri-math-util, swri-roscpp, swri-transform-util, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-swri-route-util";
  version = "3.3.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_route_util/3.3.2-2.tar.gz";
    name = "3.3.2-2.tar.gz";
    sha256 = "697c1db6b89cbe27fde77fc7136bd094d14720ab077a512670ba9c71dc85ff40";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost marti-common-msgs marti-nav-msgs rclcpp swri-geometry-util swri-math-util swri-roscpp swri-transform-util visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
