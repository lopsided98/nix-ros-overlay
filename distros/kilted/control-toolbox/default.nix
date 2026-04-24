
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, eigen, filters, fmt, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-cmake, rsl, tf2, tf2-geometry-msgs, tf2-ros, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-kilted-control-toolbox";
  version = "5.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/kilted/control_toolbox/5.10.0-1.tar.gz";
    name = "5.10.0-1.tar.gz";
    sha256 = "82572d93ef7259f58c2844141949e5c062bd3f67bd82a9b0beaac2f0643d8837";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake fmt ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock rclcpp-lifecycle ];
  propagatedBuildInputs = [ backward-ros control-msgs eigen filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools rsl tf2 tf2-geometry-msgs tf2-ros tl-expected-nixpkgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
