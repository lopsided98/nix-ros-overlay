
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, control-toolbox, gazebo-dev, gazebo-msgs, gazebo-ros, nav-msgs, rclcpp, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-plugins";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_plugins-release/archive/release/humble/pal_gazebo_plugins/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "9b1462893a735fd6ec42db5d122fbd9e8dfe89350cd9efdaabe459c3edb61a2b";
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
