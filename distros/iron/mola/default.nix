
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, kitti-metrics-eval, mola-bridge-ros2, mola-demos, mola-imu-preintegration, mola-input-euroc-dataset, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset, mola-input-rawlog, mola-input-rosbag2, mola-kernel, mola-launcher, mola-metric-maps, mola-navstate-fuse, mola-pose-list, mola-traj-tools, mola-viz, mola-yaml }:
buildRosPackage {
  pname = "ros-iron-mola";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7c9b6c37c721be11c64ca1f0a538d4274954dc628e1ae3bc0261609e96dbd70b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common kitti-metrics-eval mola-bridge-ros2 mola-demos mola-imu-preintegration mola-input-euroc-dataset mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset mola-input-rawlog mola-input-rosbag2 mola-kernel mola-launcher mola-metric-maps mola-navstate-fuse mola-pose-list mola-traj-tools mola-viz mola-yaml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage with all core open-sourced MOLA packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
