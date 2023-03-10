
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, control-toolbox, gazebo-dev, gazebo-msgs, gazebo-ros, nav-msgs, rclcpp, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-plugins";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_plugins-release/archive/release/humble/pal_gazebo_plugins/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "7b77e714af46c96100155b65ad402187e0a74ee701739b2cafb5b11a3dbfbd13";
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
