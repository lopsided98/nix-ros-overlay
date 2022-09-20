
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, crane-plus-control, crane-plus-description, crane-plus-moveit-config, geometry-msgs, moveit-ros-planning-interface, rclcpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-examples";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/foxy/crane_plus_examples/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "448b17d5228079c24888da7785432dd4e348f3437d43db30e74c22c472d1e57b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-moveit-config geometry-msgs moveit-ros-planning-interface rclcpp tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 examples package'';
    license = with lib.licenses; [ asl20 ];
  };
}
