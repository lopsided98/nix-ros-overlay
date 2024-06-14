
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, boost, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-utils, websocketpp }:
buildRosPackage {
  pname = "ros-rolling-rmf-websocket";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_websocket/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "a5282f5bc83c1558c4cc7a71699ed97c79b0cde42ba941801f7e4973906d3c9e";
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
