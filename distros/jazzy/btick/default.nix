
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, behaviortree-cpp, nlohmann_json, pugixml, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-btick";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SherifFathey/btick-release/archive/release/jazzy/btick/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9e4fa6f9a363e84c807b05e6d0adb2266bf2bf1aea20ff13cc0b265191b35b3e";
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
