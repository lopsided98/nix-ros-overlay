
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, boost, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-utils, websocketpp }:
buildRosPackage {
  pname = "ros-lyrical-rmf-websocket";
  version = "2.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_websocket/2.12.0-3.tar.gz";
    name = "2.12.0-3.tar.gz";
    sha256 = "ef1c60afacd315f7c10df685f6c102d5e0eb46ae705497c37eb60007dda6d645";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ boost nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rmf-utils websocketpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package managing the websocket api endpoints in RMF system.";
    license = with lib.licenses; [ asl20 ];
  };
}
