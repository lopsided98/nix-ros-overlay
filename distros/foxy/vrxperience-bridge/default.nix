
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cyclonedds, launch-xml, openjdk, rclcpp, rclcpp-components, tf2, vrxperience-msgs }:
buildRosPackage {
  pname = "ros-foxy-vrxperience-bridge";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/ansys-vrxperience-ros2-release/archive/release/foxy/vrxperience_bridge/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "530a932a806d51335c1437b0a47fa3534c4ea786f8025c3cdbea4fce018df7c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto openjdk ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds launch-xml rclcpp rclcpp-components tf2 vrxperience-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Bridge between the simulator and ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
