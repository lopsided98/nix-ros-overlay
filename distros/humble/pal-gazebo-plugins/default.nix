
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, control-toolbox, gazebo-dev, gazebo-msgs, gazebo-ros, nav-msgs, rclcpp, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-plugins";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_plugins-release/archive/release/humble/pal_gazebo_plugins/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "e0830a80d606faf2c4e6db227c0d081d91044838a117d827814b4860792cf0aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ control-toolbox gazebo-dev gazebo-msgs gazebo-ros nav-msgs rclcpp std-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Robot-independent Gazebo plugins used by PAL Robotics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
