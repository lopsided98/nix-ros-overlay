
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cmake, cv-bridge, mrpt-libros-bridge, mrpt-libtclap, mrpt-msgs, nav-msgs, rosbag2-cpp, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mrpt-rawlog";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_rawlog/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "66cb26ec9a79fc78cbc361a18a1e3499a4b4f31a1bd80811798e8f93978dfbf1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto cv-bridge mrpt-libros-bridge mrpt-libtclap mrpt-msgs nav-msgs rosbag2-cpp sensor-msgs tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Nodes and programs to record and play MRPT rawlogs or to transform between rosbags and rawlogs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
