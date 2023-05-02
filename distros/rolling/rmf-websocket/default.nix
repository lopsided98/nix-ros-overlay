
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, boost, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-utils, websocketpp }:
buildRosPackage {
  pname = "ros-rolling-rmf-websocket";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_websocket/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "9b5f57b22fb6aeee9905c6722efb04eecc92765682683d6b7229157aa11f3c7d";
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
