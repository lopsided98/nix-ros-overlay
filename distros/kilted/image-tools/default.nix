
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rclcpp-components, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-image-tools";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/image_tools/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "e39acc6c22bf6c799e6a4cd208aa2b5aa6671d3f6479b662f402335c36fc891e";
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
