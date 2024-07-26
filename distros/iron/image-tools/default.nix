
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rclcpp-components, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-image-tools";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/image_tools/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "21f6a2b1c482ced0a19c35e0eec4eb90fe48f183ac663634c7f54aba0f34df21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools to capture and play back images to and from DDS subscriptions and publications.";
    license = with lib.licenses; [ asl20 ];
  };
}
