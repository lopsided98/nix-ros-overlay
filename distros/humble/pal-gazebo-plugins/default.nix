
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, control-toolbox, gazebo-dev, gazebo-msgs, gazebo-ros, nav-msgs, rclcpp, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-plugins";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_plugins-release/archive/release/humble/pal_gazebo_plugins/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "41184dde484b2150cef96dba6ae2cbdd185324a33f3f6309ca1425596ae01900";
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
