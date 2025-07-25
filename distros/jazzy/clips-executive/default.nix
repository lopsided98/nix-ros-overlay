
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-ament-index-plugin, cx-bringup, cx-clips-env-manager, cx-config-plugin, cx-example-plugin, cx-executive-plugin, cx-file-load-plugin, cx-msgs, cx-plugin, cx-protobuf-plugin, cx-ros-comm-gen, cx-ros-msgs-plugin, cx-tf2-pose-tracker-plugin, cx-utils }:
buildRosPackage {
  pname = "ros-jazzy-clips-executive";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/clips_executive/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "0eabbe15ba63c3824e802192ef7ad1bba038cc34937e5427ad05cd3a3661053c";
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
