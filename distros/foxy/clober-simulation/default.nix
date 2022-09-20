
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clober-description, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-clober-simulation";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_simulation/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "8bc93cb20f5763be35cf716538b3ea66dd3beda7309f1f6a0f3fcf7cdf8603cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clober-description gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
