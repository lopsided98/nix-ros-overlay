
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cli11, cmake, cv-bridge, mrpt-libapps, mrpt-libros-bridge, mrpt-msgs, nav-msgs, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rosbag2rawlog";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/kilted/rosbag2rawlog/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "73e04526bb5af47233f359bc7add6e07bf23a9a642404d2d6e115e4c9fc4d084";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto cli11 cv-bridge mrpt-libapps mrpt-libros-bridge mrpt-msgs nav-msgs rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "CLI tool to transform between rosbags and rawlogs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
