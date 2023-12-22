
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv, rclcpp, rclcpp-components, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-image-tools";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/image_tools/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "483b45eda51e4adf7e1b2853aab1aeaf172894a5013123bbbf3f628245bf7213";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools to capture and play back images to and from DDS subscriptions and publications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
