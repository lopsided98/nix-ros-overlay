
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, kitti-metrics-eval, mola-bridge-ros2, mola-demos, mola-input-euroc-dataset, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag2, mola-input-video, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-relocalization, mola-traj-tools, mola-viz, mola-yaml }:
buildRosPackage {
  pname = "ros-rolling-mola";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "3895c5ece635fc5d44e39eaf5fb7022c8500750e4d6efe5d1038df4ed8480c9c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ kitti-metrics-eval mola-bridge-ros2 mola-demos mola-input-euroc-dataset mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag2 mola-input-video mola-kernel mola-launcher mola-metric-maps mola-pose-list mola-relocalization mola-traj-tools mola-viz mola-yaml ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Metapackage with all core open-sourced MOLA packages.";
    license = with lib.licenses; [ bsd3 ];
  };
}
