
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, sensor-msgs, launch, rmw-implementation-cmake, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-lint-auto, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, opencv3 }:
buildRosPackage {
  pname = "ros-dashing-image-tools";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/image_tools/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "1f42e8e07352df0f430278e8b696fa0016d520b0cf8c6e3d770e46d89e986a07";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs rclcpp opencv3 ];
  checkInputs = [ launch-testing-ros launch rmw-implementation-cmake launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rclcpp opencv3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools to capture and play back images to and from DDS subscriptions and publications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
