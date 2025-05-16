
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, control-toolbox, gazebo-dev, gazebo-msgs, gazebo-ros, nav-msgs, rclcpp, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-plugins";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_plugins-release/archive/release/humble/pal_gazebo_plugins/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "0a2011de05061588c0f2f7a3723cc5b69d8c7953df102fd6abf9bb5246b54655";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ control-toolbox gazebo-dev gazebo-msgs gazebo-ros nav-msgs rclcpp std-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Robot-independent Gazebo plugins used by PAL Robotics.";
    license = with lib.licenses; [ asl20 ];
  };
}
