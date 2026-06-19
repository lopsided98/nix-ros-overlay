
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, backward-ros, boost, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-utils }:
buildRosPackage {
  pname = "ros-lyrical-rmf-websocket";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_websocket/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "ca53dc05caf518cbecd91398908d23d992c7f06b7bb8dc15c79ba810511670a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ backward-ros boost nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rmf-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package managing the websocket api endpoints in RMF system.";
    license = with lib.licenses; [ asl20 ];
  };
}
