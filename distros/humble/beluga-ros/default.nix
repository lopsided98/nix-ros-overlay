
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, beluga, geometry-msgs, nav-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-beluga-ros";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/humble/beluga_ros/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "8618b867bfc6a52d6274eaa6ea18f545632e9561d84a0eede924a4a0f73b92ea";
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
