
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cmake, cv-bridge, mrpt-libros-bridge, mrpt-libtclap, mrpt-msgs, nav-msgs, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-rawlog";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_rawlog/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "93354b81e9e754aeb19d6f2504572da9be2b66e83421e60aea69ae83100c63f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common cv-bridge mrpt-libros-bridge mrpt-libtclap mrpt-msgs nav-msgs rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Nodes and programs to record and play MRPT rawlogs or to transform between rosbags and rawlogs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
