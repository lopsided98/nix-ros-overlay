
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, data-tamer-cpp, data-tamer-msgs, mcap-vendor, nlohmann_json, protobuf, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-data-tamer-tools";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/data_tamer_tools-release/archive/release/jazzy/data_tamer_tools/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4a26d92d512d055790d65ecbb6e882d8bb114884a215f7a5be9cb70f697d0a18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ data-tamer-cpp data-tamer-msgs mcap-vendor nlohmann_json protobuf rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Set of tools for using Foxglove with data tamer";
    license = with lib.licenses; [ mit ];
  };
}
