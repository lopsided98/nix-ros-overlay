
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-ament-index-plugin, cx-bringup, cx-clips-env-manager, cx-config-plugin, cx-example-plugin, cx-executive-plugin, cx-file-load-plugin, cx-msgs, cx-plugin, cx-protobuf-plugin, cx-ros-comm-gen, cx-ros-msgs-plugin, cx-tf2-pose-tracker-plugin, cx-utils }:
buildRosPackage {
  pname = "ros-rolling-clips-executive";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/clips_executive/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "ac0cbe64d8a9d2b05b226b79fe243c5a48d2caa973654f595e38721606b54ccb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cx-ament-index-plugin cx-bringup cx-clips-env-manager cx-config-plugin cx-example-plugin cx-executive-plugin cx-file-load-plugin cx-msgs cx-plugin cx-protobuf-plugin cx-ros-comm-gen cx-ros-msgs-plugin cx-tf2-pose-tracker-plugin cx-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 CLIPS-Executive meta package and documentation";
    license = with lib.licenses; [ asl20 ];
  };
}
