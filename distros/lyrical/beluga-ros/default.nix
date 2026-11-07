
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, beluga, geometry-msgs, nav-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-beluga-ros";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/lyrical/beluga_ros/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "9c0eb281b1f59a33b380297001ecefa2e7ff9b76fa1bc93f050ac0155494a2d7";
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
