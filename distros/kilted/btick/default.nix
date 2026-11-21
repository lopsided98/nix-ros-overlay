
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, behaviortree-cpp, nlohmann_json, pugixml, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-btick";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SherifFathey/btick-release/archive/release/kilted/btick/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "cceba828db293025682ba60de48f2ae577462c3f5282fc828b90e82a1938a3e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ behaviortree-cpp nlohmann_json pugixml rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "BTick - Lightweight client library for ROS 2 BehaviorTree observation and Nav2 logging";
    license = with lib.licenses; [ asl20 ];
  };
}
