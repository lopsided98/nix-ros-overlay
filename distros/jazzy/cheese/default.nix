
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cheese-interfaces, cv-bridge, launch, launch-ros, nlohmann_json, opencv, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-cheese";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/HowardWhile/ros2_cheese-release/archive/release/jazzy/cheese/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "977c4b4a1e3683ed98df5632957270249291be9eab503473f2ec59338f6ba0bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cheese-interfaces cv-bridge launch launch-ros nlohmann_json opencv opencv.cxxdev rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Trigger-based image capture node for raw and compressed camera topics.";
    license = with lib.licenses; [ mit ];
  };
}
