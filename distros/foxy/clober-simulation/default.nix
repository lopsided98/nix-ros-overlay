
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clober-description, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-clober-simulation";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_simulation/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "a81879bcd4f968cc7352e1316e6b5a16d7feeca3588be006b3a89c91b93e449f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clober-description gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
