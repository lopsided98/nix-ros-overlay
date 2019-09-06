
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, ament-lint-common, opencv3, launch-testing, sensor-msgs, launch, launch-testing-ament-cmake, rclcpp, std-msgs, ament-lint-auto, launch-testing-ros }:
buildRosPackage {
  pname = "ros-dashing-image-tools";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/image_tools/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "2ed6f6fb74772f5423fd7751aaaa297b84421be8ce4ad5e7f18ed0ccece9857f";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs opencv3 rclcpp ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch launch-testing-ament-cmake ament-lint-auto launch-testing-ros ];
  propagatedBuildInputs = [ std-msgs sensor-msgs opencv3 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools to capture and play back images to and from DDS subscriptions and publications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
