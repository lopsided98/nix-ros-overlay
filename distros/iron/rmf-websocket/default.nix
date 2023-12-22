
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, boost, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-utils, websocketpp }:
buildRosPackage {
  pname = "ros-iron-rmf-websocket";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_websocket/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "25da105c1d98e6d602c31c6a934eb4801825c4f7438eea5c33abcec0732ecee9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ boost nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rmf-utils websocketpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package managing the websocket api endpoints in RMF system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
