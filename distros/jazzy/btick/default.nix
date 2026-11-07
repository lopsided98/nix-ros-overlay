
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, behaviortree-cpp, nlohmann_json, pugixml, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-btick";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SherifFathey/btick-release/archive/release/jazzy/btick/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "991b99befcb8aea694ca020726d2663c24d6d6649a2c2400e386edc87f3ed4ab";
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
