
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, beluga, geometry-msgs, nav-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-beluga-ros";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/jazzy/beluga_ros/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "1baf137f3c0b5521fc7323339838bf32db49b242f7d295d7d2af14d7fdbd53df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ beluga geometry-msgs nav-msgs sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Utilities to interface ROS with Beluga.";
    license = with lib.licenses; [ asl20 ];
  };
}
